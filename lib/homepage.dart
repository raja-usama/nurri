import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurri/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  bool isWhitepaper = false;
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/bg2.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
              left: Responsive.isMobile(context) ? 20 : 50,
              top: 50,
              right: Responsive.isMobile(context) ? 20 : 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        widget.isWhitepaper=false;
                      });
                    },
                    child: Image.asset(
                      "assets/nn.png",
                      width: Responsive.isMobile(context) ? 60 : 100,
                      height: Responsive.isMobile(context) ? 60 : 100,
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              widget.isWhitepaper=true;
                            });
                          },
                          child: Text(
                            "Whitepaper",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    Responsive.isMobile(context) ? 14 : 18,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        width: Responsive.isMobile(context) ? 10 : 20,
                      ),
                      TextButton(
                          onPressed: ()async {
                            const url = 'https://docs.google.com/forms/u/1/d/1978tNCeiSVkX7VztPbzIkjtwq0vXHpiwfDSaGZNXN0c/edit?usp=forms_home&ths=true&pli=1';
                            if (await canLaunch(url)) {
                            await launch(url);
                            } else {
                            throw 'Could not launch $url';
                            }

                          },
                          child: Text(
                            "NRU",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    Responsive.isMobile(context) ? 14 : 18,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        width: Responsive.isMobile(context) ? 10 : 20,
                      ),
                      TextButton(
                          onPressed: () async{

                         // await   launchUrl("https://t.me/nusocialapp");

                         const url = 'https://t.me/nusocialapp';
                         if (await canLaunch(url)) {
                           await launch(url);
                         } else {
                           throw 'Could not launch $url';
                         }
                          },
                          child: Text(
                            "Contact Us",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    Responsive.isMobile(context) ? 14 : 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              )),
          Positioned(
            width: 350,
            top: 100,
            child: SizedBox(
                child: Image.asset(
              "assets/asset1.png",
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
            width: 350,
            bottom: 40,
            right: 50,
            child: SizedBox(
                child: Image.asset(
              "assets/asset1.png",
              fit: BoxFit.cover,
            )),
          ),

          Responsive.isMobile(context)
              ? Container()
              : Positioned(
                  left: 50,
                  bottom: 150,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Color(0xffF28AEE),
                  )),

          Responsive.isMobile(context)
              ? Container()
              : Positioned(
                  right: 50,
                  top: 200,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Color(0xffF28AEE),
                  )),

         widget.isWhitepaper==false? Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  """Nu is a consortium at the 
intersection of social engagement
and financial innovation within the
blockchain and AI ecosystem.""",
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: Responsive.isMobile(context) ? 28 : 44,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 25),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ):
          Positioned(
            top: 150,
            child: Container(
              width: Responsive.isMobile(context)?MediaQuery.of(context).size.width-40: MediaQuery.of(context).size.width-400,
              height: MediaQuery.of(context).size.height- 150,
              // height: Get.height-100,
              child: SingleChildScrollView(
                child: Column

                  (
                  children: [
                    Text("""
Whitepaper


In an era defined by transformative technologies, the financial landscape is evolving at an unprecedented pace. At Nurii, we stand at the forefront of this evolution, ready to introduce you to a groundbreaking paradigm shift in the way we interact with money, assets, and data.

This whitepaper is your gateway to understanding Nurii, a revolutionary blockchain-powered financial ecosystem. Nurii is not just a platform; it's a catalyst for innovation, a bridge between traditional finance and the blockchain future, and a solution designed to empower individuals, banking institutions, and enterprises. We will delve deep into the principles, technologies, and vision behind Nurii, revealing how it streamlines financial operations, enhances transparency, and ushers in a new era of borderless financial possibilities. Welcome to the future of finance—welcome to Nurii.
 
Nurii's primary use case

These use cases collectively contribute to Nurii's mission of revolutionizing the financial industry, offering an advanced solution for both individuals and enterprises seeking to navigate the evolving digital financial landscape. Nurii facilitates the secure and efficient management of digital assets, including cryptocurrencies, tokens, and other digital holdings. It offers a seamless and low-cost payment infrastructure for individuals, businesses, and banking institutions, improving cross-border transactions. Nurii leverages smart contracts for automating and enforcing a variety of financial agreements and processes, enhancing transparency and trust. It acts as a bridge between different banking institutions, coins and payment systems, ensuring compatibility and interoperability. 

Nurii enhances data transparency by recording financial transactions and records on a blockchain, contributing to greater trust and accountability. Nurii serves as a supportive tool for navigating daily customer relations and enhancing customer experiences in financial interactions. It facilitates compliance with regulatory requirements, ensuring that financial operations align with legal frameworks and standards. Nurii's innovative features aim to reduce transaction costs, streamline financial operations, and enhance overall efficiency in the financial ecosystem.
 
Here Is how the Nurii ecosystem works

The Nurii ecosystem operates on a blockchain network, providing a secure and transparent ledger for financial transactions and data management. This blockchain infrastructure is the foundation of the ecosystem. Nurii allows users to manage their digital assets, including cryptocurrencies and tokens, within the ecosystem. Users can securely store, transfer, and track their digital holdings. Smart contracts are a central component of Nurii. These self-executing contracts are programmable and automate various financial processes. For example, they can facilitate payments, enforce agreements, and trigger actions when predefined conditions are met. Nurii promotes interoperability by acting as a bridge between different banking institutions, coins and payment systems. This means that assets and payments from various sources can seamlessly interact within the ecosystem.

All financial transactions and records are recorded on the blockchain, ensuring transparency and immutability. This transparency provides trust and accountability among users. Nurii offers low-cost and efficient payment solutions, making it easier for individuals, businesses, and banks to conduct transactions, especially across borders. Nurii’s  tools and features enhance customer relations within the financial ecosystem. It assists in daily interactions, improving customer experiences. The ecosystem is designed to comply with regulatory requirements, ensuring that all financial operations adhere to legal frameworks and standards. By leveraging blockchain and smart contract technology, Nurii aims to reduce transaction costs, streamline financial operations, and increase overall efficiency in the financial industry.
 
Nurii is addressing several problems in the financial industry

The financial landscape is fragmented, with various banking institutions, coins, payment systems, and digital assets that lack interoperability. Nurii bridges these gaps, providing a universal ecosystem  for seamless interactions. Many financial transactions, especially cross-border payments, are burdened with high fees or barriers. Nurii offers low-cost payment solutions, reducing transaction costs for individuals, businesses, and banking institutions.

Inefficient financial processes and a lack of transparency can lead to disputes and inefficiencies. Nurii records all transactions and data on a blockchain, enhancing transparency and trust among users. The complexity of managing digital assets and navigating financial interactions can be overwhelming. Nurii simplifies these processes, offering tools and features to improve customer relations and efficiency.

The lack of interoperability between different banking institutions, and payment systems creates friction in the financial ecosystem. Nurii tools bridge all financial sectors, ensuring compatibility and seamless interaction between various assets and platforms. Compliance with evolving regulatory requirements is a significant challenge in the financial sector. Nurii is designed to facilitate regulatory compliance, providing a secure and compliant environment for financial operations.

In summary, Nurii's mission is to streamline and enhance financial operations while addressing these pressing issues, making the financial space more accessible, efficient, and transparent for all digital assets worldwide.
   Roadmap
 
Quarter 4, 2023: Planning and Foundation 

Assemble the core team, establish the project's vision, and define specific goals and objectives.
In-depth market research and competitor analysis to refine the product strategy.
Begin the initial architecture and technology stack planning for the Nurii ecosystem.

Quarter 1 2024: Development Kickoff

Commence development of the Nurii blockchain infrastructure and set up a test environment.
Initiate the creation of smart contract solutions and core functionalities.
Begin early-stage testing and gather feedback from a select group of beta users.

Quarter 2, 2024: Iteration and Refinement

Begin early-stage testing and gather feedback from a select group of beta users.
 Refine the blockchain infrastructure, smart contracts, and core features based on feedback and testing results.
Scale up testing efforts with a larger pool of users to identify and resolve any remaining issues.

Quarter 3, 2024: Pilot Launch

Prepare for a pilot launch with a limited user base.
Conduct the pilot launch to gather real-world data and user insights for further improvements.

Quarter 4, 2024: Expansion and Optimization

Evaluate the results of the pilot launch and implement necessary optimizations.
Begin expanding the Nurii ecosystem, focusing on attracting banking institutions and early adopters.
Develop additional features, including data management tools and customer relationship enhancements.

Quarter 1, 2025: Scaling and Wider Adoption

Scale up operations and infrastructure to accommodate increased user demand.
Launch marketing campaigns to attract a broader user base, both individuals and enterprises.
Explore partnerships with financial institutions to promote Nurii as a preferred financial platform.

Quarter 2, 2025: Compliance and Regulatory Efforts

Collaborate with regulatory bodies to ensure full compliance with financial regulations.
Continue optimizing the Nurii ecosystem based on user feedback and regulatory requirements.

Quarter 3, 2025: Full Ecosystem Expansion

Expand the Nurii ecosystem to support a wider range of digital assets and payment solutions.
Launch Nurii as a fully developed financial technology platform, serving a diverse user base of individuals, businesses, and enterprises.

This 16-month roadmap outlines the key milestones and activities needed to take Nurii from its initial planning stages in Q4 2023 to a fully developed and widely adopted financial ecosystem by the end of Q3 2025. Please note that this roadmap is a high-level overview, and specific timelines and activities may vary based on project requirements and developments.




                    """,style: TextStyle(color: Colors.white,fontSize: 20),)
                  ],
                ),
              ),
            ),
          ),

         !widget.isWhitepaper? Positioned(
            bottom: 60,
            child: AnimatedTextKit(
              pause: const Duration(milliseconds: 1000),
              stopPauseOnTap: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Coming Soon!',
                  textStyle: const TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Canterbury',
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  speed: const Duration(milliseconds: 25),
                ),
              ],
            ),
          ):SizedBox(),
        ],
      ),
    );
  }
}


 Future launchUrl(url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}