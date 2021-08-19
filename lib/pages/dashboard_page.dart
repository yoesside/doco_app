import 'package:doco_app/model/break_button.dart';
import 'package:doco_app/model/slider_buttonOut.dart';
import 'package:doco_app/providers/time_provider.dart';
import 'package:doco_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:doco_app/model/slider_buttonIn.dart';
import 'package:doco_app/pages/profile_page.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var times = Provider.of<TimeProvider>(context).getTimes();

    return Scaffold(
      backgroundColor: darkColor,
      body: SafeArea(
        child: Column(
          children: [
           Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/logo_taksu.png",
                  width: 95,
                  height: 29,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
                  },
                  child: Image.asset("assets/images/Profile2.png",
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
           ),
          SizedBox(
            height: 10,
          ),
          Container(
            
            color: cyanMainColor,
            width: 373,
            height: 75,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                  width: 17,
                ),
                Align(
                  alignment: Alignment(-0.77, -0.75),
                  child: Text("Quick Info",
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.18, -0.75),
                  child: Text("Townhall meeting 28 July 2021", 
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 20,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            // NumberFormat("###.0#", "en_US").format(12.345678),
            times[0],
            style: GoogleFonts.poppins(
              fontSize: 17,
              color: whiteColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SliderButtonIn(),
          SizedBox(
            height: 90,
          ),
            Text(
              // NumberFormat("###.0#", "en_US").format(12.345678),
              times[1],
              style: GoogleFonts.poppins(
                fontSize: 17,
                color: whiteColor,
              ),
            ),
            SizedBox(
            height: 20,
          ),
           BreakButton(),

          SizedBox(
            height: 90,
          ),
          Text(
            // NumberFormat("###.0#", "en_US").format(12.345678),
            times[2],
            style: GoogleFonts.poppins(
              fontSize: 17,
              color: whiteColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SliderButtonOut()

          ],
        ),
      ),
    );
  }
}