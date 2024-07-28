import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/admin_users_card.dart';
import 'package:woofers/model/account_model.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/services/account_service.dart';
import 'package:woofers/services/adoption_service.dart';

class AdminUsersPage extends StatefulWidget {
  const AdminUsersPage({super.key});

  @override
  _AdminUsersPageState createState() => _AdminUsersPageState();
}

class _AdminUsersPageState extends State<AdminUsersPage> {
  // PaginationFeeds paginationFeeds = PaginationFeeds();
  bool isLoading = false; // Initially, set to false
  List<AllUsers> allUsers = [];
  FilterAdoption filterAdoption = FilterAdoption();
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
      final viewAllDogResponse =
          await AccountService().retrieveAllUsers();

      setState(() {
        allUsers.addAll(viewAllDogResponse);
        isLoading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
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
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: allUsers.length + 1,
        itemBuilder: (context, index) {
          if (index == allUsers.length) {
            return isLoading
                ? const Center(child: CircularProgressIndicator())
                : const SizedBox.shrink();
          }

          return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: allUsers.isEmpty
              ? const Text("No data available")
              : Wrap(
                  children: allUsers
                      .map((e) => AdminUsersCard(allUsers: e))
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
