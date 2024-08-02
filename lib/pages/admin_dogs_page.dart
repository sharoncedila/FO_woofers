import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/admin_dogs_card.dart';
import 'package:woofers/model/admin_model.dart';
import 'package:woofers/pages/login_page.dart';
import 'package:woofers/services/account_service.dart';
import 'package:woofers/services/admin_service.dart';

class AdminDogsPage extends StatefulWidget {
  const AdminDogsPage({super.key});

  @override
  _AdminDogsPageState createState() => _AdminDogsPageState();
}

class _AdminDogsPageState extends State<AdminDogsPage> {
  // PaginationFeeds paginationFeeds = PaginationFeeds();
  bool isLoading = false; // Initially, set to false
  List<ShowDogsResponse> dogAdminList = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    fetchInitialData();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchInitialData();
      }
    });
  }

  Future<void> fetchInitialData() async {
    if (isLoading) return;

    setState(() {
      isLoading = true; 
    });

    try {
      final viewDogsResponse =
          await AdminService().showDogs();

      setState(() {
        dogAdminList.addAll(viewDogsResponse);
        isLoading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        dogAdminList = [];
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  final _logoutService = AccountService();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 0,
        backgroundColor: HexColor("#a0dcdc"),
        title: Text(
          "WOOFERS",
          style: GoogleFonts.lora(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(40, 36, 36, 10000),
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.5);
                  }
                  return null;
                },
              ),
            ),
            child: const Text('Logout'),
            onPressed: () async {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Confirmation'),
                    content: const Text(
                        'Are you sure want to log out your account?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text('No'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  );
                },
              ).then((value) {
                // yess
                if (value != null && value) {
                  _logoutService.logout();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                }
                // no
                // else {
                //   // If 'No' is pressed or the dialog is dismissed
                //   // print('User canceled');
                //   // Perform the desired action or do nothing
                // }
              });
            },
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: dogAdminList.length + 1,
        itemBuilder: (context, index) {
          if (index == dogAdminList.length) {
            return isLoading
                ? const Center(child: CircularProgressIndicator())
                : const SizedBox.shrink();
          }

          return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: dogAdminList.isEmpty
              ? const Text("No data available")
              : Wrap(
                  children: dogAdminList
                      .map((e) => AdminDogCard(dog: e))
                      .toList(),
                ),
        ),
      ),
    );
        },
      ),
    );
  }
}
