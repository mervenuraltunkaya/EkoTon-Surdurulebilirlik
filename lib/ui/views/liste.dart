import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../renkler.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  // Görevlerin listesi
  List<Map<String, dynamic>> todos = [];

  final FirebaseAuth _auth = FirebaseAuth.instance; //kimlik doğrulama için
  final FirebaseFirestore _firestore = FirebaseFirestore.instance; //listedeki işlemlerin kaydı için

  @override
  void initState() {
    super.initState();
    _loadTodos(); //kullanıcının görevlerini yükler
  }

  //kullanıcının mevcut görevleri
  Future<void> _loadTodos() async {
    User? user = _auth.currentUser;
    if (user != null) {
      QuerySnapshot snapshot = await _firestore
          .collection('users') //ana koleksiyona eriş
          .doc(user.uid) //uidyi kullanarak verilerin saklandığı belgeye ulaş
          .collection('todos')
          .get(); //verileri getir

      setState(() {
        todos = snapshot.docs.map((doc) => {
          'id': doc.id,
          'title': doc['title'],
          'completed': doc['completed']
        }).toList();
      });
    }
  }

  //GÖREV EKLEME
  Future<void> _addTodo(String title) async {
    User? user = _auth.currentUser;
    if (user != null) {
      DocumentReference docRef = await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('todos')
          .add({'title': title, 'completed': false}); //ekle

      setState(() {
        todos.add({'id': docRef.id, 'title': title, 'completed': false});
      });
    }
  }

  //GÖREV GÜNCELLEME
  Future<void> _updateTodoStatus(String id, bool completed) async {
    User? user = _auth.currentUser;
    if (user != null) {
      await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('todos')
          .doc(id)
          .update({'completed': completed});

      setState(() {
        int index = todos.indexWhere((todo) => todo['id'] == id);
        if (index != -1) {
          todos[index]['completed'] = completed;
        }
      });
    }
  }

  //GÖREV SİLME
  Future<void> _deleteTodo(String id) async {
    User? user = _auth.currentUser;
    if (user != null) {
      await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('todos')
          .doc(id)
          .delete();

      setState(() {
        todos.removeWhere((todo) => todo['id'] == id);
      });
    }
  }

  Future<void> _confirmDelete(BuildContext context, String id) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // Diyalog dışına tıklayarak kapatılmasını engeller
      builder: (BuildContext context) {
        return AlertDialog(
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Silmek istediğine emin misin?',
                    style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontSize: 20,
                        color: Colors.black)),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('İptal',
                  style: TextStyle(
                      fontFamily: 'PT Sans',
                      fontSize: 12,
                      color: yaziRenk2)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Sil',
                  style: TextStyle(
                      fontFamily: 'PT Sans',
                      fontSize: 12,
                      color: yaziRenk2)),
              onPressed: () {
                _deleteTodo(id); // Görevi sil
                Navigator.of(context).pop(); // Diyaloğu kapat
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "eko-do",
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "Homemade Apple",
            fontSize: 24,
          ),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 16,),
          Expanded(
            child: ListView.builder( //liste
              itemCount: todos.length, //todos uzunluğunda
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    leading: Checkbox( //solda
                      value: todos[index]['completed'],
                      onChanged: (bool? value) {
                        _updateTodoStatus(todos[index]['id'], value!);
                      },
                      activeColor: anaRenk,
                    ),
                    title: Text(
                      todos[index]['title'],
                      style: TextStyle(
                        decoration: todos[index]['completed']
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    trailing: IconButton( //sağda
                      icon: Icon(Icons.delete, color: anaRenk),
                      onPressed: () {
                        _confirmDelete(context, todos[index]['id']); // Onay diyaloğunu çağır
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      //Yeni görev ekleme butonu
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTodoDialog(context);
        },
        child: Icon(Icons.add, color: yaziRenk1),
        backgroundColor: anaRenk,
      ),
    );
  }

  void _showAddTodoDialog(BuildContext context) {
    String yeniGorev = ''; // Yeni görev metni
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // Yeni görev ekleme kısmı
          title: Text('Yeni Sürdürülebilir Davranışın Nedir?',style: TextStyle(color: anaRenk, fontFamily: "PT Sans"),), // Dialog başlığı
          content: TextField(
            onChanged: (value) {
              yeniGorev = value; // Yeni görev metnini güncelle
            },
            decoration: InputDecoration(hintText: 'Yeni davranışınızı girin' ), // Metin giriş alanı ipucu
          ),
          actions: [
            TextButton(
              onPressed: () {
                _addTodo(yeniGorev); // Yeni görevi Firestore'a ekle
                Navigator.pop(context); // Dialogu kapat
              },
              child: Text('Ekle',style: TextStyle(color: anaRenk, fontFamily: "PT Sans"),), // Ekleme butonu metni
            ),
          ],
        );
      },
    );
  }
}
