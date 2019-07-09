import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Copyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("");
  }
}

class AboutAppDecription extends StatelessWidget {
  static const email = "sasha.sirelon@gmail.com";
  static const space = 32.0;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextStyle aboutTextStyle = themeData.textTheme.body2;
    final TextStyle linkStyle =
        themeData.textTheme.body2.copyWith(color: themeData.accentColor);

    return Center(
      child: Column(
        children: [
          buildRichText(aboutTextStyle, linkStyle, 'Email ',
              'mailto:$email?subject=Application Qoutes', email),
          SizedBox(height: space),
          buildRichText(
              aboutTextStyle,
              linkStyle,
              'API Provided by ',
              'https://thesimpsonsquoteapi.glitch.me/',
              'The Simpsons Quote API'),
          SizedBox(height: space),
        ],
      ),
    );
  }

  RichText buildRichText(TextStyle aboutTextStyle, TextStyle linkStyle,
      String description, String link, String textAsLink) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: description,
          style: aboutTextStyle,
        ),
        _LinkTextSpan(style: linkStyle, url: link, text: textAsLink)
      ]),
    );
  }
}

class _LinkTextSpan extends TextSpan {
  _LinkTextSpan({TextStyle style, String url, String text})
      : super(
            style: style,
            text: text ?? url,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(url, forceSafariVC: false);
              });
}

void addAllLicences() {
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(<String>['Privacy Policy'], '''
Alexandr Romanishyn built the Marvel Heroes: Avengers, Thanos, IronMan, etc! app as an Ad Supported app. This SERVICE is provided by Alexandr Romanishyn at no cost and is intended for use as is.

This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.

If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.

The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Marvel Heroes: Avengers, Thanos, IronMan, etc! unless otherwise defined in this Privacy Policy.

Information Collection and Use

For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.

The app does use third party services that may collect information used to identify you.

Link to privacy policy of third party service providers used by the app

Google Play Services
AdMob
Firebase Analytics
Fabric
Crashlytics
Log Data

I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.

Cookies

Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.

This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.

Service Providers

I may employ third-party companies and individuals due to the following reasons:

To facilitate our Service;
To provide the Service on our behalf;
To perform Service-related services; or
To assist us in analyzing how our Service is used.
I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.

Security

I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.

Links to Other Sites

This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.

Children’s Privacy

These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.

Changes to This Privacy Policy

I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.

Contact Us

If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at sasha.sirelon@gmail.com.

This privacy policy page was created at privacypolicytemplate.net and modified/generated by App Privacy Policy Generator''');
  });

  // Marvel
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(
        <String>['MARVEL DIGITAL COMICS LICENSE AGREEMENT AND TERMS OF USE'],
        '''
LAST MODIFIED: FEBRUARY 25, 2013

This Marvel Digital Comics License Agreement and Terms of Use (the "Agreement") is an agreement between you and Marvel Worldwide, Inc. (with its affiliates and subsidiaries, "Marvel" or "we"). Please read this Marvel Digital Comics License Agreement and Terms of Use, the Marvel Privacy Policy (the "Marvel Privacy Policy"), the Marvel Terms & Conditions (the "Marvel Terms & Conditions") and other applicable rules, policies, and terms posted on the Marvel website or any Marvel Comics Apps before using the Marvel Comics Apps and Digital Content (each as defined below). In the event of a conflict between those terms and the terms of this Agreement, this Agreement will govern.

By downloading and/or using the Marvel Comics Apps and/or any Digital Content, you agree to be bound by the terms of this Agreement, of the Marvel Privacy Policy and the Marvel Terms & Conditions. If you do not accept these terms, then you may not download or use the Marvel Comics Apps or any Digital Content. In addition, when using the Marvel Comics App(s) and any Digital Content, you shall be subject to any posted guidelines or rules applicable to such service, features or offers that may be posted from time to time. All such guidelines or rules are hereby incorporated by reference into this Agreement.

DEFINED TERMS

For the purposes of this Agreement:

"Digital Content" means digitized comic books, including single issues and trade publications, games, video, audio and other digital content provided hereunder.

"Marvel Comics Apps" means, collectively, Marvel's digital comics reader, storefront applications, websites and/or software (including any updates/upgrades to that software) through which you can: (1) browse, shop for, download and/or stream, read and/or otherwise use Digital Content or other items offered by us for use on one (1) or more select devices (e.g., smartphones, tablets, PC/Mac, et al.); and (2) manage your Digital Content and account settings.

"Subscription-based Content" means Digital Content made available to you on a subscription basis, such as the Marvel Unlimited service.

1. DIGITAL COMICS AND OTHER DIGITAL CONTENT

Digital Content. You understand and agree that the Marvel Comics Apps and Digital Content you receive through the Marvel Comics Apps is owned by Marvel and is protected by the copyright laws of the United States, as well as other intellectual property laws and treaties. Marvel does not transfer any title, right or interest to or in the Marvel Comics Apps and/or Digital Content to you.

Use of Digital Content. Upon your download and/or streaming and/or use of Digital Content and payment of any applicable fees (including applicable taxes), Marvel grants you a non-exclusive and non-assignable license to access, view, download, use and display such Digital Content only on the number and type(s) (if so limited) of devices specified in the Marvel Comics Apps or in the third party store in which the app was obtained (e.g., the iTunes app store), and solely for your personal, non-commercial use consistent with the terms of this Agreement. Digital Content is licensed to you by Marvel; not sold, transferred or assigned to you. Marvel may post additional terms for Digital Content in the Marvel Comics Apps. Those terms will also apply, but in the event of a conflict between those terms and the terms of this Agreement, this Agreement will govern.

Limitations. Unless otherwise stated in writing by Marvel, you must not copy, redistribute, sell, rent, lease, convey, reconvey or sublicense the Digital Content. You must not attempt to circumvent, avoid, bypass, remove, deactivate, impair or otherwise defeat any encryption, rights signaling or copy protection technology in which the Digital Content is wrapped or otherwise associated with, and you must not edit, modify, translate or create derivative works or adaptations of the Digital Content. You must not duplicate or otherwise reproduce (including but not limited to â€œburningâ€) the Digital Content, or any portion thereof, onto any physical medium, memory or device (other than within your set of personal devices that are registered for access to your own personal account with Marvel's service), including but not limited to CDs, DVDs, computers or other hardware, or any other medium now known or hereafter devised.

Subscription-based Content. You may cancel your subscription as permitted in our cancellation policy for such Subscription-based Content. We reserve the right to change subscription terms and fees from time to time, effective as of the beginning of the next subscription term upon notice to you. The Marvel Unlimited subscription service is governed by its terms of use located in the Account section of the Marvel Unlimited app and on the Marvel website.

Offline Subscription-based Content. Marvel may, from time to time, permit you to download certain Subscription-based Content for offline use. Marvel may place limitations on such use, including, without limitation, the number of issues available offline at any given time and the length of offline availability. Marvel reserves the right, in its sole discretion, to change the terms of such offline use from time to time, without prior notice to you. Marvel further reserves the right, in its sole discretion, to terminate the ability to download and access offline content at any time, without prior notice to you.

2. MARVEL COMICS APPS

Use of the Marvel Comics Apps. You may use the Marvel Comics Apps, including the software comprising them, solely on the number and type(s) (if so limited) of devices for which you downloaded such content. You may not separate any individual component of such software for use on another device or computer, may not transfer it for use on another device or computer or use it, or any portion of it, over a network, and may not sell, rent, lease, lend, distribute, or sublicense or otherwise assign any rights to such software in whole or in part.

App Updates. In order to keep your Marvel Comics Apps up-to-date, Marvel may make available updates/upgrades to the app. If you do not download such updates/upgrades, you may not receive certain features and/or functionality and/or you may lose certain features and/or functionality of the app.

No Reverse Engineering, Decompilation, Disassembly, or Circumvention. You may not modify, reverse engineer, decompile, reproduce, copy, disassemble the Marvel Comics Apps or otherwise reduce the computer file in which the Digital Content is stored to a human-readable form, whether in whole or in part, create any derivative works from or of the Marvel Comics Apps, or bypass, modify, defeat, or tamper with or circumvent any of the functions or protections of the Marvel Comics Apps; e.g., by modifying, defeating, augmenting or substituting any digital rights management functionality.

3. GENERAL

Compliance with Law and Reservation of Rights. You must use the Marvel Comics Apps and the Digital Content in compliance with all applicable laws. All licenses are non-exclusive and all rights not expressly granted in this Agreement are reserved to Marvel.

Export Regulations. You must comply with all applicable export and re-export restrictions and regulations, and you must not transfer, or encourage, assist, or authorize the transfer of, the Digital Content, or Marvel Comics Apps to a prohibited country or otherwise in violation of any such restrictions or regulations.

Collection of Usage Information. The Marvel Comics Apps will provide Marvel with information and data related to the Digital Content on your device and your use of it (such as registration information, information on what a user has purchased, information on the user's activity in the app, device details, et al.). Information we receive from or about you is subject to the Marvel Privacy Policy, and any personal information transferred by Marvel is subject to such privacy policy and to applicable law.

Patents/Copyrights. The Marvel Comics Apps, and/or methods used in connection with the app, may be covered by copyright and one or more patents or pending patent applications and as trade secrets, and the Digital Content is protected by copyright, trademarks and other applicable law.

Suspension of Access. We may modify, suspend, or discontinue access to certain Digital Content in the event of a rights issue or other business or legal issue.

Termination. Your rights under this Agreement will automatically terminate if you fail to comply with any term of this Agreement. In case of such termination, you must cease all use of the Marvel Comics Apps and Digital Content, and Marvel reserves the right to immediately revoke your access to the Marvel Comics Apps or to Digital Content without refund of any fees. Marvel's failure to exercise or enforce any term of this Agreement will not constitute a waiver of such term or any of Marvel's rights or remedies.

Disclaimer of Warranties. USE OF THE MARVEL COMICS APPS AND DIGITAL CONTENT, AND SOFTWARE IS AT YOUR SOLE RISK. NO ORAL OR WRITTEN INFORMATION OR ADVICE GIVEN BY MARVEL OR AN AUTHORIZED REPRESENTATIVE OF MARVEL CREATES A WARRANTY, AND THE MARVEL COMICS APPS AND DIGITAL CONTENT ARE PROVIDED "AS IS" WITH ALL FAULTS AND WITHOUT WARRANTY OF ANY KIND, AND MARVEL AND ITS LICENSORS DISCLAIM ALL WARRANTIES, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT ONT LIMITED TO, IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, ACCURACY, QUIET ENJOYMENT, SATISFACTORY QUALITY, NON-INFRINGEMENT OF THIRD-PARTY RIGHTS, AND THEIR EQUIVALENTS UNDER THE LAWS OF ANY JURISDICTION . THE LAWS OF CERTAIN JURISDICTIONS DO NOT ALLOW THE DISCLAIMER OF IMPLIED WARRANTIES. IF THESE LAWS APPLY TO YOU, SOME OR ALL OF THE ABOVE DISCLAIMERS, EXCLUSIONS OR LIMITATIONS MAY NOT APPLY TO YOU, AND YOU MAY HAVE ADDITIONAL RIGHTS.

Limitation of Liability. TO THE EXTENT NOT PROHIBITED BY LAW, MARVEL AND ITS LICENSORS AND AFFILIATES WILL NOT BE LIABLE TO YOU FOR ANY INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR BREACH OF ANY EXPRESS OR IMPLIED WARRANTY, BREACH OF CONTRACT, NEGLIGENCE, STRICT LIABILITY, OR ANY OTHER LEGAL THEORY RELATED TO THE MARVEL COMICS APPS AND DIGITAL CONTENT, SUCH AS ANY DAMAGES ARISING OUT OF LOSS OF PROFITS, REVENUE, DATA, OR USE OF THE MARVEL COMICS APPS AND DIGITAL CONTENT OR ANY ASSOCIATED PRODUCT, EVEN IF MARVEL HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. IN ANY CASE, MARVEL'S AND ITS AFFILIATES' AGGREGATE LIABILITY UNDER THIS AGREEMENT WITH RESPECT TO ANY CLAIM RELATING TO PURCHASE OF DIGITAL CONTENT IS LIMITED TO THE AMOUNT YOU ACTUALLY PAID FOR THAT DIGITAL CONTENT. THE LAWS OF CERTAIN JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR CONSEQUENTIAL DAMAGES. IF THESE LAWS APPLY TO YOU, SOME OR ALL OF THE ABOVE EXCLUSIONS OR LIMITATIONS MAY NOT APPLY TO YOU, AND YOU MAY HAVE ADDITIONAL RIGHTS.

Governing Law; Disputes. The laws of the state of New York, United States of America, without regard to principles of conflict of laws, will govern this Agreement and any dispute of any sort that might arise between you and Marvel. You agree that any cause of action that may arise under this Agreement shall be commenced and be heard in the appropriate court in the State of New York, County of New York, United States of America. You agree to submit to the personal and exclusive jurisdiction of the courts located within New York County in the State of New York.

Complete Agreement and Severability. This is the entire agreement between us and you regarding the Marvel Comics Apps and Digital Content and supersedes all prior understandings regarding such subject matter. If any term or condition of this Agreement is deemed invalid, void, or for any reason unenforceable, that part will be deemed severable and will not affect the validity and enforceability of any remaining term or condition.

Amendment. We may amend any of the terms of this Agreement in our sole discretion by posting the revised terms on the Marvel Comics Apps and/or the Marvel website. Your continued use of the Marvel Comics Apps and Digital Content after the effective date of any such amendment constitutes your agreement to be bound by such amendment.

Contact Information. For help with any Marvel Comics Apps and/or Digital Content, please contact Customer Service by email at onlinesupport@marvel.com, or by using the "Contact Us" button in the Marvel Unlimited app.

For communications concerning this Agreement, please contact Marvel by email at onlinesupport@marvel.com, or by using the "Contact Us" button in the Marvel Unlimited app.

ABOUT MARVEL
HELP/FAQS''');
  });
  // Disney
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(<String>['Disney Terms of Use'], '''
Last Updated:  November 8, 2018

Disney Interactive is pleased to provide to you its sites, software, applications, content, products and services (“Disney Services”), which may be branded Disney, ABC, ESPN, Marvel, Lucasfilm, Club Penguin, Playdom or another brand owned or licensed by The Walt Disney Company.  These terms govern your use and our provision of the Disney Services on which these terms are posted, as well as Disney Services we make available on third-party sites and platforms if these terms are disclosed to you in connection with your use of the Disney Services.  PLEASE READ THESE TERMS CAREFULLY BEFORE USING THE DISNEY SERVICES.

ANY DISPUTE BETWEEN YOU AND US MUST BE RESOLVED BY INDIVIDUAL BINDING ARBITRATION.  PLEASE READ THE ARBITRATION PROVISION IN THESE TERMS AS IT AFFECTS YOUR RIGHTS UNDER THIS CONTRACT.

NOTHING IN THESE TERMS IS INTENDED TO AFFECT YOUR RIGHTS UNDER THE LAW IN YOUR USUAL PLACE OF RESIDENCE.  IF THERE IS A CONFLICT BETWEEN THOSE RIGHTS AND THESE TERMS, YOUR RIGHTS UNDER APPLICABLE LOCAL LAW WILL PREVAIL.


1.      Contract between You and Us

This is a contract between you and Disney Interactive, a California corporation located at 500 South Buena Vista Street, Burbank, California 91521, USA, or between you and any different service provider identified for a particular Disney Service.  You must read and agree to these terms before using the Disney Services.  If you do not agree, you may not use the Disney Services.  These terms describe the limited basis on which the Disney Services are available and supersede prior agreements or arrangements.

Supplemental terms and conditions may apply to some Disney Services, such as rules for a particular competition, service or other activity, or terms that may accompany certain content or software accessible through the Disney Services.  Supplemental terms and conditions will be disclosed to you in connection with such competition, service or activity.  Any supplemental terms and conditions are in addition to these terms and, in the event of a conflict, prevail over these terms.

We may amend these terms.  Any such amendment will be effective thirty (30) days following either our dispatch of a notice to you or our posting of the amendment on the Disney Services.  If you do not agree to any change to these terms, you must discontinue using the Disney Services.  Our customer service representatives are not authorized to modify any provision of these terms, either verbally or in writing.

We may immediately terminate this contract with respect to you (including your access to the Disney Services) if you fail to comply with any provision of these terms.

2.      The Disney Services

The Disney Services are for your personal, noncommercial use and are intended for informational and entertainment purposes only.  They do not constitute legal, financial, professional, medical or healthcare advice or diagnosis and cannot be used for such purposes.  To support smooth operation of the Disney Services across wide geographic areas, aspects of certain activities, such as game play, may be simulated to avoid delays.

The Disney Services are our copyrighted property or the copyrighted property of our licensors or licensees and all trademarks, service marks, trade names, trade dress and other intellectual property rights in the Disney Services are owned by us or our licensors or licensees.  Except as we specifically agree in writing, no element of the Disney Services may be used or exploited in any way other than as part of the Disney Services offered to you. You may own the physical media on which elements of the Disney Services are delivered to you, but we retain full and complete ownership of the Disney Services.  We do not transfer title to any portion of the Disney Services to you.

Content and Software License

If a Disney Service is configured to enable the use of software, content, virtual items or other materials owned or licensed by us, we grant you a limited, non-exclusive, non-sublicensable, non-transferable license to access and use such software, content, virtual item or other material for your personal, noncommercial use only.

You may not circumvent or disable any content protection system or digital rights management technology used with any Disney Service; decompile, reverse engineer, disassemble or otherwise reduce any Disney Service to a human-readable form; remove identification, copyright or other proprietary notices; or access or use any Disney Service in an unlawful or unauthorized manner or in a manner that suggests an association with our products, services or brands.  You may not access or use any Disney Service in violation of United States export control and economic sanctions requirements.  By acquiring services, content or software through the Disney Services, you represent and warrant that your access to and use of the services, content or software will comply with those requirements.

Disclaimers and Limitation on Liability

THE DISNEY SERVICES ARE PROVIDED “AS IS” AND “AS AVAILABLE.”  WE DISCLAIM ALL CONDITIONS, REPRESENTATIONS AND WARRANTIES NOT EXPRESSLY SET OUT IN THESE TERMS.

WE SHALL NOT BE LIABLE TO YOU FOR INDIRECT, INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS AND PROPERTY DAMAGE, EVEN IF WE WERE ADVISED OF THE POSSIBILITY OF SUCH DAMAGES, NOR SHALL WE BE HELD LIABLE FOR DELAY OR FAILURE IN PERFORMANCE RESULTING FROM CAUSES BEYOND OUR REASONABLE CONTROL.  IN NO EVENT SHALL OUR TOTAL LIABILITY TO YOU FOR ALL DAMAGES, LOSSES AND CAUSES OF ACTION EXCEED ONE THOUSAND U.S. DOLLARS (US USD1,000).

THESE DISCLAIMERS AND LIMITATIONS DO NOT AFFECT YOUR RIGHTS AS A CONSUMER OR PURPORT TO LIMIT LIABILITY THAT CANNOT BE EXCLUDED UNDER THE LAW IN YOUR USUAL PLACE OF RESIDENCE.

Changes to the Disney Services

The Disney Services are constantly evolving and will change over time.  If we make a material change to the Disney Services, we will provide you with reasonable notice and you will be entitled to terminate this contract.

Additional Restrictions on Use of the Disney Services

We do not allow uses of the Disney Services that are commercial or business-related, or that advertise or offer to sell products or services (whether or not for profit), or that solicit others (including solicitations for contributions or donations).  You agree not to knowingly or recklessly introduce a virus or other harmful component, or otherwise tamper with, impair or damage any Disney Service or connected network, or interfere with any person or entity’s use or enjoyment of any Disney Service.  You agree not to use any software or device that allows automated gameplay, expedited gameplay, or other manipulation of gameplay or game client and you agree not to cheat or otherwise modify a Disney Service or game experience to create an advantage for one user over another.  Additionally, you agree not to access, monitor or copy, or permit another person or entity to access, monitor or copy, any element of the Disney Services using a robot, spider, scraper or other automated means or manual process without our express written permission.

Third-Party Services and Content

The Disney Services may integrate, be integrated into, or be provided in connection with third-party services and content.  We do not control those third-party services and content.  You should read the terms of use agreements and privacy policies that apply to such third-party services and content.

If you access a Disney Service using an Apple iOS, Android or Microsoft Windows-powered device or Microsoft Xbox One, Apple Inc., Google, Inc. or Microsoft Corporation, respectively, shall be a third-party beneficiary to this contract.  However, these third-party beneficiaries are not a party to this contract and are not responsible for the provision or support of the Disney Services.  You agree that your access to the Disney Services using these devices also shall be subject to the usage terms set forth in the applicable third-party beneficiary’s terms of service.

Mobile Networks

When you access the Disney Services through a mobile network, your network or roaming provider’s messaging, data and other rates and fees will apply.  Downloading, installing or using certain Disney Services may be prohibited or restricted by your network provider and not all Disney Services may work with your network provider or device.

3.      Your Content and Account

User Generated Content

The Disney Services may allow you to communicate, submit, upload or otherwise make available text, images, audio, video, competition entries or other content (“User Generated Content”), which may be accessible and viewable by the public.  Access to these features may be subject to age restrictions.  You may not submit or upload User Generated Content that is defamatory, harassing, threatening, bigoted, hateful, violent, vulgar, obscene, pornographic, or otherwise offensive or that harms or can reasonably be expected to harm any person or entity, whether or not such material is protected by law.

We do not claim ownership to your User Generated Content; however, you grant us a non-exclusive, sublicensable, irrevocable and royalty-free worldwide license under all copyrights, trademarks, patents, trade secrets, privacy and publicity rights and other intellectual property rights to use, reproduce, transmit, print, publish, publicly display, exhibit, distribute, redistribute, copy, index, comment on, modify, adapt, translate, create derivative works based upon, publicly perform, make available and otherwise exploit such User Generated Content, in whole or in part, in all media formats and channels now known or hereafter devised (including in connection with the Disney Services and on third-party sites and platforms such as Facebook, YouTube and Twitter), in any number of copies and without limit as to time, manner and frequency of use, without further notice to you, with or without attribution, and without the requirement of permission from or payment to you or any other person or entity.

You represent and warrant that your User Generated Content conforms to these terms and that you own or have the necessary rights and permissions, without the need for payment to any other person or entity, to use and exploit, and to authorize us to use and exploit, your User Generated Content in all manners contemplated by these terms.  You agree to indemnify and hold us and our subsidiary and affiliated companies, and each of their respective employees and officers, harmless from any demands, loss, liability, claims or expenses (including attorneys’ fees), made against us by any third party arising out of or in connection with our use and exploitation of your User Generated Content.  You also agree not to enforce any moral rights, ancillary rights or similar rights in or to the User Generated Content against us or our licensees, distributors, agents, representatives and other authorized users, and agree to procure the same agreement not to enforce from others who may possess such rights.

To the extent that we authorize you to create, post, upload, distribute, publicly display or publicly perform User Generated Content that requires the use of our copyrighted works, we grant you a non-exclusive license to create a derivative work using our copyrighted works as required for the purpose of creating the materials, provided that such license shall be conditioned upon your assignment to us of all rights in the work you create.  If such rights are not assigned to us, your license to create derivative works using our copyrighted works shall be null and void.

We have the right but not the obligation to monitor, screen, post, remove, modify, store and review User Generated Content or communications sent through a Disney Service, at any time and for any reason, including to ensure that the User Generated Content or communication conforms to these terms, without prior notice to you.  We are not responsible for, and do not endorse or guarantee, the opinions, views, advice or recommendations posted or sent by users.

Accounts

Some Disney Services permit or require you to create an account to participate or to secure additional benefits.  You agree to provide and maintain accurate, current and complete information, including your contact information for notices and other communications from us and your payment information.  You agree not to impersonate or misrepresent your affiliation with any person or entity, including using another person’s username, password or other account information, or another person’s name or likeness, or provide false details for a parent or guardian.  You agree that we may take steps to verify the accuracy of information you provide, including contact information for a parent or guardian.

We have adopted and implemented a policy that provides for the termination, in appropriate circumstances, of the accounts of users who are repeat infringers of copyright.  In addition, we may suspend or terminate your account and your ability to use the Disney Services if you engage in, encourage or advocate for illegal conduct, or if you fail to comply with these terms or any supplemental terms.

Passwords and Security

You are responsible for taking reasonable steps to maintain the confidentiality of your username and password, and you are responsible for all activities under your account that you can reasonably control.  You agree to promptly notify us of any unauthorized use of your username, password or other account information, or of any other breach of security that you become aware of involving your account or the Disney Services.

The security, integrity and confidentiality of your information are extremely important to us.  We have implemented technical, administrative and physical security measures that are designed to protect your information from unauthorized access, disclosure, use and modification.

4.      Paid Transactions

Identity of Seller

Sales are made by Disney Interactive or the seller identified at the time of sale, if different.  If you have questions about your order, please contact the seller at the address provided and they will assist you.  Some storefronts on the Disney Services are operated by third parties and, in that case, different or additional sale terms may apply, which you should read when they are presented to you.

Digital Content and Virtual Items

We may make applications, games, software or other digital content available on the Disney Services for you to license for a one-time fee.  When purchasing a license to access such material from a Disney Service, charges will be disclosed to you on the Disney Service before you complete the license purchase.

Your purchase of a virtual item or in-game currency is a payment for a limited, non-assignable license to access and use such content or functionality in the Disney Services.  Virtual items (including characters and character names) or in-game currency purchased or available to you in the Disney Services can only be used in connection with the Disney Services where you obtained them or where they were developed by you as a result of game play.  These items are not redeemable or subject to refund and cannot be traded outside of the Disney Services for money or other items for value.  We may modify or discontinue virtual items or in-game currency at any time.

Subscriptions

Some Disney Services require paid subscriptions to access.  By signing up for a subscription, you agree that your subscription will be automatically renewed and, unless you cancel your subscription, you authorize us to charge your payment method for the renewal term.  The period of auto-renewal will be the same as your initial subscription period unless otherwise disclosed to you at the time of sale.  The renewal rate will be no more than the rate for the immediately prior subscription period, excluding any promotional and discount pricing, unless we notify you of a rate change prior to your auto-renewal.     From time to time, we may offer a free trial subscription for a Disney Service.  If you register for a free trial subscription, we will begin to bill your account when the free trial subscription expires, unless you cancel your subscription before that time.

The Order Process

You will have the opportunity to review and confirm your order, including delivery address (if applicable), payment method and product details.  We will send to you a notice when we accept your order and our acceptance will be deemed complete and for all purposes to have been effectively communicated to you at the time we send the notice.  At such time, the contract for sale will be made and become binding on both you and us.  The risk of loss in any goods you purchase and the responsibility to insure them passes to you when the relevant goods are delivered.

We reserve the right to refuse or cancel any order prior to delivery.  Some situations that may result in your order being cancelled include system or typographical errors, inaccuracies in product or pricing information or product availability, fairness among customers where supplies are limited, or problems identified by our credit or fraud departments.  We also may require additional verification or information before accepting an order.  We will contact you if any portion of your order is cancelled or if additional information is required to accept your order.  If your order is cancelled after we have processed your payment but prior to delivery, we will refund your payment.

Payments and Billing

When you provide payment information, you represent and warrant that the information is accurate, that you are authorized to use the payment method provided, and that you will notify us of changes to the payment information.  We reserve the right to utilize third party credit card updating services to obtain current expiration dates on credit cards.

Right of Cancellation; Return of Goods

When you subscribe to a Disney Service, you have the right to cancel your contract within fourteen (14) days after your receipt and acceptance of these terms and you will receive a full refund of the subscription fee paid.  For semi-annual and annual subscriptions, if notice of cancellation is received within the first thirty (30) days following the first day of initial billing, you will receive a refund of the subscription fee paid.  If we refund your subscription fee, you will still be obligated to pay other charges incurred.

When you purchase a license to access digital content or virtual items, you will be given an opportunity to consent to delivery at the time of purchase.  By consenting to delivery, you acknowledge that you have lost the right to cancel and the license purchase fee is non-refundable.

You have the right, within thirty (30) days from the date of your receipt of physical goods, to cancel our contract with you and return the goods.  This right does not apply to goods stated by us on the Disney Services to be non-returnable, including audio and video recordings, computer software, and CD’s, DVD’s or other physical media that have been unsealed.  If you are returning goods that are not faulty, you may be required to pay for the cost of returning the goods to us and we may deduct a reasonable amount if you use the goods.

If you wish to cancel, you must do so by following the cancellation instructions for the particular Disney Service.  A sample cancellation form is available here.

Digital Movie Codes

Digital codes originally packaged in a combination disc + code package (a package that includes a DVD, Blu-Ray, and/or 4K/UHD disc(s) and a digital code) may not be sold separately and may be redeemed only by an individual who obtains the code in the original combination disc + code package, or by a family member of that individual.  Digital codes are not authorized for redemption if sold separately. You may use digital movie codes to obtain licensed access to digital movies only as specifically authorized under these terms and conditions and the terms and conditions of the participating provider of digital content through which you access or download the digital movie.  Digital movie codes sold, distributed, purchased, or transferred in a manner inconsistent with these terms and conditions are subject to being invalidated.

Digital Movie Code Returns.  If you do not agree to the above terms and conditions for redeeming a digital movie code obtained by you or a family member in an original combination disc + code package, you may return the combination disc + code package to Disney for a refund subject to the conditions provided at this link

Personalized Goods

Please note that the rights of cancellation and return do not apply for personalized goods.  Cancellations and changes to personalized goods cannot be made once you have submitted your order and personalized items cannot be returned unless there is a manufacturing error or product defect.  We reserve the right to refuse personalized orders at our discretion.  Inappropriate use of our personalization service will cause your order to be cancelled and any payment refunded.

Pricing; Taxes

We may revise the pricing for products and services we offer.  If you pay a periodic subscription fee for a Disney Service, we will provide you with reasonable notice of changes to the fees or billing methods in advance of their effective date and you will be able to cancel your subscription prior to such change.  When you place your order, we estimate the tax and include that estimate in the total for your convenience.  The actual tax amount that will be applied to your order and charged to your payment method is based on calculations on the date of shipment, regardless of when the order was placed.

International Shipping; Customs

When ordering goods for delivery to countries other than the country where the seller is located, you may have to pay import duties and taxes levied.  These and any additional charges for customs clearance must be borne by you.  For goods shipped internationally, please note that any manufacturer warranty may not be valid; manufacturer service options may not be available; manuals, instructions and safety warnings may not be in destination country languages; the goods and accompanying materials may not be designed in accordance with destination country standards, specifications, and labeling requirements; and the goods may not conform to destination country voltage (requiring use of an adapter or converter).  You are responsible for assuring the goods can be lawfully imported to the destination country.  When ordering from us, the recipient is the importer of record and must comply with all laws and regulations of the destination country.

5.      Competitions

Competitions that you enter on a Disney Service may have supplemental rules and conditions, but the following general rules apply absent contrary terms in any supplemental rules or conditions for the competition.

Entries

Your competition entry is User Generated Content and subject to all provisions of these terms that govern your submission and our use of your User Generated Content.  We may disqualify entries that are late, misdirected, incomplete, corrupted, lost, illegible or invalid or where appropriate parental consent was not provided.  Competition entries are limited to one per person and entries via agents or third parties or the use of multiple identities are not permitted.  Use of automated entries, votes or other programs is prohibited and all such entries (or votes) will be disqualified.

We reserve the right to modify, suspend, cancel or terminate a competition or extend or resume the entry period or disqualify any participant or entry at any time without giving advance notice.  We will do so if it cannot be guaranteed the competition can be carried out fairly or correctly for technical, legal or other reasons, or if we suspect that any person has manipulated entries or results, provided false information or acted unethically.  If we cancel or terminate a competition, prizes may be awarded in any manner we deem fair and appropriate consistent with local laws governing the competition.

Eligibility

To enter a competition, you must be a registered user of the Disney Services and have an active account with current contact information.  No purchase is necessary to enter a competition and a purchase will not improve your chances of winning.  Competitions are not open to our employees (or their immediate families) or anyone else professionally associated with the competition.  If you are under age 18 (or the age of majority under applicable law) and the competition is open to you, we may need your parent or guardian’s consent before we can accept your entry.  We reserve the right to request proof of identity or to verify eligibility conditions and potential winning entries, and to award any prize to a winner in person.  Competitions are void where prohibited or restricted by law.  Potential winners who are residents in jurisdictions where competitions require an element of skill may be required to answer a mathematical test in order to be eligible to win a prize.

Prizes

No cash or alternative prizes are available, except that we (or the party providing a prize) reserve the right to substitute a similar prize of equal or greater value.  Prizes cannot be transferred (except to a child or other family member) or sold by winners.  Only the number of prizes stated for the competition is available to be won and all prizes will be awarded provided a sufficient number of eligible entries are received and prizes are validly claimed by the date provided in connection with the competition, after which no alternate winners will be selected or unclaimed prizes awarded.  Unless otherwise disclosed in the prize description prior to entry, winners are responsible for all costs and expenses associated with claiming a prize.  All taxes are solely the responsibility of each winner, although we reserve the right to withhold applicable taxes and each winner agrees to complete any required tax forms.

Your acceptance of a prize constitutes agreement to participate in reasonable publicity related to the competition and grants us an unconditional right to us to use your name, town or city and state, province or country, likeness, prize information and statements by you about the competition for publicity, advertising and promotional purposes and to comply with applicable law and regulations, all without additional permission or compensation.  As a condition of receiving a prize, winners (or their parents or guardians) may be required to sign and return an affidavit of eligibility, liability release and publicity release.

6.      Additional Provisions

Submissions and Unsolicited Ideas Policies

Our long-standing company policy does not allow us to accept or consider unsolicited creative ideas, suggestions or materials.  In connection with anything you submit to us – whether or not solicited by us – you agree that creative ideas, suggestions or other materials you submit are not being made in confidence or trust and that no confidential or fiduciary relationship is intended or created between you and us in any way, and that you have no expectation of review, compensation or consideration of any type.

Claims of Copyright Infringement

Notifications of claimed copyright infringement and counter notices must be sent to our designated agent:

Lance R. Griffin
The Walt Disney Company
500 South Buena Vista Street
Burbank, California 91521, USA
Phone:  +1 818-560-1000
Fax:  +1 818-560-4299
Email:  designated.agent@dig.twdc.com

We are only able to accept notices in the languages into which these terms are made available by us.

We will respond expeditiously to claims of copyright infringement committed using the Disney Services that are reported to our Designated Copyright Agent, identified above, in accordance with the U.S. Digital Millennium Copyright Act of 1998 (“DMCA”) or, as applicable, other laws.  With respect to Disney Services hosted in the United States, these notices must include the required information set forth in the DMCA and described in detail here.

Binding Arbitration and Class Action Waiver

You and Disney Interactive agree to arbitrate all disputes between you and The Walt Disney Company or its affiliates, except disputes relating to the enforcement of The Walt Disney Company or its affiliates’ intellectual property rights.  “Dispute” includes any dispute, action or other controversy between you and us concerning the Disney Services or these terms, whether in contract, tort, warranty, statute or regulation, or other legal or equitable basis.  You and Disney Interactive empower the arbitrator with the exclusive authority to resolve any dispute relating to the interpretation, applicability or enforceability of these terms or formation of this contract, including the arbitrability of any dispute and any claim that all or any part of these terms are void or voidable.

In the event of a dispute, you or Disney Interactive must send to the other party a notice of dispute, which is a written statement that sets forth the name, address and contact information of the party giving the notice, the facts giving rise to the dispute and the relief requested.  You must send any notice of dispute to Disney Interactive, 500 South Buena Vista Street, Burbank, California 91521, USA, Attention: Legal/Arbitration Notice.  We will send any notice of dispute to you at the contact information we have for you.  You and Disney Interactive will attempt to resolve a dispute through informal negotiation within sixty (60) days from the date the notice of dispute is sent.  After sixty (60) days, you or we may commence arbitration.  You may also litigate a dispute in small claims court if the dispute meets the requirements to be heard in small claims court, whether or not you negotiated informally first.

If you and Disney Interactive do not resolve a dispute by informal negotiation or in small claims court, the dispute shall be settled by binding arbitration before a neutral arbitrator whose decision will be final except for a limited right of appeal under the U.S. Federal Arbitration Act.  YOU ARE GIVING UP THE RIGHT TO LITIGATE A DISPUTE IN COURT BEFORE A JUDGE OR JURY.  Arbitration will be administered by the American Arbitration Association (the “AAA”) under its Commercial Arbitration Rules and its Supplementary Procedures for Consumer Related Disputes.  For more information, visit www.adr.org or, in the United States, call 800-778-7879.  Arbitration may be conducted in person, through the submission of documents, by phone or online.  The arbitrator may award damages to you individually as a court could, including declaratory or injunctive relief, but only to the extent required to satisfy your individual claim.

Unless the arbitrator finds the arbitration was frivolous or brought for an improper purpose, Disney Interactive will pay all filing, AAA, and arbitrator’s fees and expenses.  If the arbitrator issues you an award that is greater than the value of our last written settlement offer made before an arbitrator was selected (or if we did not make a settlement offer before an arbitrator was selected), then we will pay you the amount of the award or US USD1,000, whichever is greater, and pay your attorney, if any, the amount of attorneys’ fees, and reimburse any expenses (including expert witness fees and costs) that you or your attorney reasonably accrue for investigating, preparing and pursuing your claim in arbitration.  We waive any right to seek an award of attorneys’ fees and expenses in connection with any non-frivolous arbitration between you and us.

If you are a resident of the United States, arbitration will take place at any reasonable location convenient for you.  For residents outside the United States, arbitration shall be initiated in the borough of Manhattan, New York, New York, United States of America, and you and Disney Interactive agree to submit to the personal jurisdiction of the federal or state courts located there, in order to compel arbitration, stay proceedings pending arbitration, or confirm, modify, vacate or enter judgment on the award entered by the arbitrator.

PROCEEDINGS TO RESOLVE OR LITIGATE A DISPUTE IN ANY FORUM WILL BE CONDUCTED ON AN INDIVIDUAL BASIS.  Neither you nor Disney Interactive will seek to have a dispute heard as a class action, private attorney general action, or in any other proceeding in which either party acts or proposes to act in a representative capacity.  No arbitration or proceeding can be combined with another without the prior written consent of all parties to the arbitration or proceeding.  If the class action waiver is found to be illegal or unenforceable as to all or some parts of a dispute, those parts will be severed and proceed in a court of law, with the remaining parts proceeding in arbitration.

Choice of Forum

You agree that any action at law or in equity arising out of or relating to these terms or the Disney Services that is not subject to arbitration shall be filed, and that venue properly lies, only in the state or federal courts located in the borough of Manhattan, New York, New York, United States of America and you consent and submit to the personal jurisdiction of such courts for the purposes of litigating such action.

Choice of Law

These terms are governed by and construed in accordance with the laws of the State of New York and the laws of the United States, without giving effect to any conflict of law principles.

Severability

If any provision of these terms shall be unlawful, void or for any reason unenforceable, then that provision shall be deemed severable from these terms and shall not affect the validity and enforceability of any remaining provisions.

Survival

The provisions of these terms which by their nature should survive the termination of these terms shall survive such termination.

Waiver

No waiver of any provision of these terms by us shall be deemed a further or continuing waiver of such provision or any other provision, and our failure to assert any right or provision under these terms shall not constitute a waiver of such right or provision.
''');
  });
}
