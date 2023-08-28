import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import 'landscapewidget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '  FEB',
                style: TextStyle(
                    fontSize: 15, color: Colors.white.withOpacity(0.6)),
              ),
              Text(
                ' 1  1 ',
                style: TextStyle(
                    fontFamily: GoogleFonts.anton().fontFamily,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Landscapewidget(),
              kheight,
              Row(
                children: [
                  Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.rampartOne().fontFamily,
                      letterSpacing: -5,
                    ),
                  ),
                  const Spacer(),
                  const CustomButtonWidget(
                    icon: Icons.notifications,
                    text: 'Remind Me',
                    iconsize: 20,
                    textsize: 10,
                  ),
                  kwidth20,
                  const CustomButtonWidget(
                    icon: Icons.info_rounded,
                    text: 'Info',
                    iconsize: 20,
                    textsize: 10,
                  ),
                  kwidth20,
                ],
              ),
              kheight,
              const Text(
                'Coming On Friday',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Image.network(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/87fe7c9f-a6f4-42d3-96fd-9924de610773/desqd6x-fa144654-6da3-4fc9-aace-be1b86c11fca.png/v1/fill/w_1280,h_608/netflix_film_logo_by_ethanishere_desqd6x-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjA4IiwicGF0aCI6IlwvZlwvODdmZTdjOWYtYTZmNC00MmQzLTk2ZmQtOTkyNGRlNjEwNzczXC9kZXNxZDZ4LWZhMTQ0NjU0LTZkYTMtNGZjOS1hYWNlLWJlMWI4NmMxMWZjYS5wbmciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.-H6J4CP0lKa26Mpb4MOgG28TRCdFMxa7vivFj1uMuD4',
                width: 40,
                height: 50,
              ),
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence--and her relationship--into a tailspin',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
