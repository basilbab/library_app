import 'package:flutter/material.dart';
import 'package:library_app/domain/employee_model.dart';

class ScreenLibraryHome extends StatefulWidget {
  const ScreenLibraryHome({super.key});

  @override
  State<ScreenLibraryHome> createState() => _ScreenLibraryHomeState();
}

class _ScreenLibraryHomeState extends State<ScreenLibraryHome> {
  final bookNameController = TextEditingController();
  final bookAuthorController = TextEditingController();
  final bookEditionController = TextEditingController();
  List<BookModel> bookModelList = [
    BookModel(
        bookId: '1',
        bookName: 'Scalar Codes',
        authorName: 'Mathew',
        bookEdition: '2nd',
        userId: '1'),
    BookModel(
        bookId: '2',
        bookName: 'Discrete Maths',
        authorName: 'Dove',
        bookEdition: '1st',
        userId: '2'),
    BookModel(
        bookId: '3',
        bookName: 'DOM',
        authorName: 'Bob',
        bookEdition: '1st',
        userId: '3'),
  ];
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Libraray Management App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: bookNameController,
                            decoration: const InputDecoration(
                                hintText: 'Book Name',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              // Write the code to add the .....
                            },
                            child: const Text('Add'))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: bookAuthorController,
                            decoration: const InputDecoration(
                                hintText: 'Author',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: bookEditionController,
                            decoration: const InputDecoration(
                                hintText: 'Edition',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .19,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          //Write code to change status
                        },
                        leading: Text((index + 1).toString()),
                        title: Text(
                          bookModelList[index].bookName,
                          style: const TextStyle(
                              fontSize: 23, color: Colors.purple),
                        ),
                        subtitle: Row(
                          children: [
                            Text('Author-${bookModelList[index].authorName}/',
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.pink)),
                            Text('Edition-${bookModelList[index].bookEdition}',
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.pink)),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  //Write the code to delete .....
                                },
                                icon: const Icon(Icons.delete))
                          ],
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: bookModelList.length,
                ))
          ],
        ),
      ),
    );
  }
}
