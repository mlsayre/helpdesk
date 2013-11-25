HelpDesk Prime
==============

This is the #1 app for asking questions (problems) and having me answer them. I used Postmark to enable notifications when someone posts a question. And I enabled automatic posting for when I reply to the email with an answer.

Problem: I used "reply_to" when sending the notification email. Gmail doesn't use that when replying, so I must manually input the insanely long Postmark email address. Also, I need to make sure to delete the quoted question when replying or it all messily shows up in the app.

Problem: Implementing inbound email was more difficult than it needed to be. I will be creating a tutorial for that, as it seems like a common enough feature for Rails apps. 

![](https://raw.github.com/mlsayre/helpdesk/master/app/assets/images/helpdeskss.png)
