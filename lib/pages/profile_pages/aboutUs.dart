import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/widgets/headers.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Header(text: "About us", backIcon: true),

              Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text("Welcome to our app , your number one source for all things [product, ie: shoes, bags, dog treats]. "
                        "We're dedicated to giving you the very best of [product], "
                        "with a focus on [three characteristics, ie: dependability, "
                        "customer service and uniqueness].   Founded in [year] by [founder's name], "
                        "[store name] has come a long way from its beginnings in a [starting location, "
                        "ie: home office, toolshed, Houston, TX.]. When [store founder] first started out, "
                        "his/her passion for [passion of founder, ie: helping other parents be more eco-friendly, "
                        "providing the best equipment for his fellow musicians] drove him to [action, ie: do intense research, quit her day job], "
                        "and gave him the impetus to turn hard work and inspiration into to a booming online store. We now serve customers all over [place,"
                        " ie: the US, the world, the Austin area], and are thrilled to be a part of the [adjective, ie: quirky, eco-friendly,"
                        " fair trade] wing of the [industry type, ie: fashion, baked goods, watches] industry.",
                      style: TextStyle(fontSize: 18, letterSpacing: 2), softWrap: true,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
