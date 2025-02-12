import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slicing extends StatelessWidget {
  const Slicing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          "Detail",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Image.network(
                'https://i.pinimg.com/736x/21/eb/58/21eb580bc48605933631eeaf1b4c9e2d.jpg',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),

            Text(
              "#14415",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(
              "Hypebest Apes B",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            Row(
              children: [
                Icon(Icons.shopping_cart, color: Colors.grey, size: 16),
                SizedBox(width: 4),
                Text("125 Sold",
                    style: GoogleFonts.poppins(color: Colors.grey)),
                SizedBox(width: 16),
                Icon(Icons.timer, color: Colors.grey, size: 16),
                SizedBox(width: 4),
                Text("1h 23m 32s",
                    style: GoogleFonts.poppins(color: Colors.grey)),
              ],
            ),

            SizedBox(height: 16),

            Text(
              "Description",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.",
              style: GoogleFonts.poppins(color: Colors.grey),
            ),

            SizedBox(height: 16),

            Text(
              "Price",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "2.23 ETH",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Place Bid",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    

    );
  }
}