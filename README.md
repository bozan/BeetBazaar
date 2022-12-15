# BeetBazaar 

## 1.1. **Project Description**

Transaction of used goods is essential for not wasting resources and recycling process. This project will implement a solution for marketing used goods that are fast, reliable, and easy to use. This application will provide peer-to-peer communication for second-hand product sales. This project aims to satisfy both sellers and buyers.

## 1.2. Project Scope

### 1.2.1 In Scope

- Sign-Up page
- E-mail or Phone Number Confirmation
- Login Page
- HomePage
- SellPage
- Search Bar on all pages
- User Profile Page
- Filtering (By Price / Category etc) on all pages
- Admin Panel with User Management
- File Access for Product selling

### 1.2.2 Out Scope

- Seller Rating
- Payment System
- Basket Page
- User-to-User chat
- Past Orders
- Seller-to-User chat
- Camera access/support
- Product Comments/rating
- Coupons
- Customer support
- Buy Product Page
    - Either with Basket + when “Buy” is clicked, the product is no longer available in the market, and the contact info of the seller will be provided for the buyer
    - Or with Buyer + Seller Username / Rating Entrance - Notification by Confirmed contact way or Permanent Dialog / Notification

## 1.3. Designs

<img alt="signup pages" src="https://github.com/bozan/BeetBazaar/blob/main/designed%20templates/signup_signin.png?raw=true"></img></a>
<img alt="signup pages" src="https://github.com/bozan/BeetBazaar/blob/main/designed%20templates/product_pages.png?raw=true"></img></a>


<p align="center">
<img width=325 alt="signup pages" src="https://github.com/bozan/BeetBazaar/blob/main/designed%20templates/profile_page.png?raw=true"></img></a> 
<img width=680 alt="signup pages" src="https://github.com/bozan/BeetBazaar/blob/main/designed%20templates/selling_pages.png?raw=true"></img></a>  
</p>


# 2. Project Plan

1. The user opens the app,
    1. If authenticated, user enters the system
        1. System opens the **Home Page** by default
            1. User **searches** for a product
                1. Homepage will show that product
            2. If user **filters** the page results
                1. Filtered results will be listed
            3. User clicks on a product
                1. System opens that product page with information about the product
        2. If the user clicks on “**Sell**” button below
            1. The user will be navigated to the “**Sell Page**”
                1. All the items that the user is selling will be listed in this page
            2. User clicks “**New Product**”
                1. User will be redirected to a form to fill our about the product info
                2. The form will include:
                    1. A picture field that will require media access
                    2. A tags section to be used while filtering the product
                    3. The more tags the creator enters, the more the item will be visible according to the filter results
                3. User saves the information
                4. System adds that product to “Sell Page” list with all the items to be sold
    2. Else, it opens the **login/signup** page
        1. User enters their email
            1. If the email is registered in the system, user is navigated to enter the password
            2. User enters the password
                1. If password is correct, System opens the **Home Page**
                2. Else, user will be warned until 10 wrong password attempts
                    1. If the number of attempt limit will be overflooded
                        1. User will be locked out
            3. Else, user is navigated to sign-up page
                1. User will fill the sign up form, including
                    1. An address (or a location, close enough to suggest sellers nearby)
                    2. Phone number
                    3. Email
                    4. Username (not required)
                    5. Password (twice)
                    6. Preferences (not required)
                2. User saves the info

## Features:

- A configurable workflow action to:  
  - update all links with your own with EASE!
  - update Code Of Conduct E-mail with your own!
  - update Security Policy E-mail with your own!
  - download files & folder from another GitHub Repo
  - compress / optimize all images in repo!
  - generate a Markdown styled [index file](index.html) with SEO details!
  - generate a table of contents in your README
  - generate a star-gazer metrics SVG image
- Time Saving Files:
  - [Pull request template](.github/pull_request_template.md)
  - Issue templates for [bug reports](.github/ISSUE_TEMPLATE/bug_report.yaml) and
    [feature requests](.github/ISSUE_TEMPLATE/feature_request.yaml)
  - [Contributor guidelines](.github/CONTRIBUTING.md)
  - [Code Owners](.github/CODEOWNERS)
  - [Code of Conduct](.github/CODE_OF_CONDUCT.md)
  - [Change-log](.github/CHANGE_LOG.md)
  - [To-Do list](.github/TO_DO.md)
  - [Security Policy](.github/SECURITY.md)
  - [README](README.md)
  - [License file](LICENSE) 
   - GitHub Bot Files
       -  [config.yml](/.github/config.yml) file to modify multiple bot's behaviours.
       -  [issue_label_bot.yaml](/.github/issue_label_bot.yaml) file to use the issue adder GitHub bot. [Activate it or check its documentation](https://github.com/marketplace/issue-label-bot).
       -  [settings.yml](/.github/settings.yml) file to use the popular settings GitHub bot. [Activate it or check its documentation](https://probot.github.io/apps/settings/).



## Example and Usage

	
 <br>
<details><summary>How to use this <b>template</b>:</summary>
 <br>		
 
 To run any of these tasks you MUST be in the <b>Actions section</b>
 
 <details><summary>How to find the <a href="https://github.com/MarketingPipeline/Awesome-Repo-Template/actions"><b>Action</b></a></summary>
 
<a href="https://github.com/MarketingPipeline/Awesome-Repo-Template/actions"> ![image](https://user-images.githubusercontent.com/86180097/177446180-b71e50d1-df9d-4ef8-8d78-91184702cff0.png) </a>

</details>	

<br>	 
<br>	 
	
<details><summary>How to replace all <b>links</b> with your own:</summary>
<br>	
	
Edit the [repo_config.json](.github/py_repo_tools/repo_config.json) file & set the value for "REPLACE_TEXT_WITH" - to your username & repo name like the following example 

       MyUserName/My-Repo-Name

And run the Repo Generator in Actions - set "Update all links" to <code>checked</code>
 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	
</details>

<br>	 
<br>	 
	
<details><summary>How to replace <b>e-mail</b> in <a href="CODE_OF_CONDUCT.md">Code of Conduct</a> with your own:</summary>
<br>	
	
Edit the [repo_config.json](.github/py_repo_tools/repo_config.json) file & set the value for "EMAIL" - to your e-mail address like the following example. 

       hello_world@github.com

And run the Repo Generator in Actions- set "Update Code Of Conduct Info" to <code>checked</code>
 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	
</details>
<br>	 
<br>	 
	
<details><summary>How to replace <b>e-mail</b> in <a href=".github/SECURITY.md">Security Policy</a> with your own:</summary>
<br>	
	
Edit the [repo_config.json](.github/py_repo_tools/repo_config.json) file & set the value for "EMAIL" - to your e-mail address like the following example. 

       hello_world@github.com

And run the Repo Generator in Actions- set "Update Security Info" to <code>checked</code>
 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	
</details>

<br>	 
<br>	 
	
<details><summary>How to <b>download</b>  file(s) / folder(s) from another GitHub repo</summary>
<br>	
	
<br>
<h3> WARNING</h3>
files downloaded from a repo containing the same name in your current repo will be OVER-WRITTEN.
<br> <br> <br> <br> 
	
In the Repo Generator Actions- set "Download a file or folder from a GitHub Repo" to a GitHub file path or folder.


Example(s)


To download a <b>single file</b>:

     https://github.com/Repo-Owner-UserName/Repo-Name/blob/master/README.md


To download a specific <b>folder</b>:

     https://github.com/Repo-Owner-UserName/Repo-Name/blob/master/Folder-Name
     
 

To download all files in a repo <b>folder</b>:

     https://github.com/Repo-Owner-UserName/Repo-Name/blob/master/
     
     

Note: File's will be placed into main repo path. 

 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	
</details>

<br>	 
<br>	 
	
<details><summary>How to generate a <b>index.html</b> file</summary>
<br>	
	
	
A index.html file will be produced from your README content.

SEO details such as Title, Description & OG images etc are auto-produced using your Repo details.

<b>Note</b> Your README content will be rendered in Github Flavored Markdown using our tool [Markdown-Tag: Add Markdown to any HTML using a <md> tag](https://github.com/MarketingPipeline/Markdown-Tag)

Go to the Repo Generator in Actions- set "Generate Index File" to <code>checked</code>
 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	
</details>
<br>	 
<br>	 
	
<details><summary>How to <b>compress / optimize</b> images in repo</summary>
<br>	
	
<b><i>Note:</b></i> All images in repo will be compressed / optimized (SVG's are NOT supported)

Go to the Repo Generator in Actions- set "Compress / Optimize Images" to <code>checked</code>
 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	
</details>
 <br>		
 
	
<br>	 
<br>	 
	
<details><summary>How to generate <b>Table Of Contents</b>:</summary>
<br>	
To generate tables of contents automatically use anywhere in your README.md file a comment like so

   
&lt;!-- toc -->

&lt;!-- tocstop -->


And when running the Repo Generator in Actions - set "Generate Table Of Contents" to <code>checked</code>


<b><i>WARNING:</i></b> Only 1 table of contents can be generated in a README - if you use more than one you WILL face problems. 
 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	
</details>


 <br>		
 
	
<br>	 
<br>	 
	
<details><summary>How to Generate a <b>Metrics Image</b>:</summary>
<br>	
 
Create a Personal Access Token & create a repo secret called "METRICS_TOKEN" & when running the Repo Generator - set "Generate Metrics Image File" to <code>checked</code> 

You will have an image generated that looks like this!

<img src="stargazers-metrics.svg"></img>

It will be placed in the main repo under the filename <code>stargazers-metrics.svg</code> 

<i>Note:</i> if someone knows how to change this please make a pull request with the image placed to .github folder!


 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	
</details>


<br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>		
</details>
	
<br>	 
	
<details><summary>Shield.io Buttons:</summary>
<br>

<!--Copy & paste whatever buttons you need!-->

_Repo metadata_

	
[![Github license](https://img.shields.io/github/license/MarketingPipeline/Awesome-Repo-Template.svg "Github license")](https://github.com/MarketingPipeline/Awesome-Repo-Template/blob/master/LICENSE)
[![Open issues](https://img.shields.io/github/issues/MarketingPipeline/Awesome-Repo-Template.svg "Open issues")](https://github.com/MarketingPipeline/Awesome-Repo-Template/issues)
[![Closed issues](https://img.shields.io/github/issues-closed/MarketingPipeline/Awesome-Repo-Template.svg "Closed issues")](https://github.com/MarketingPipeline/Awesome-Repo-Template/issues?utf8=✓&q=is%3Aissue+is%3Aclosed)
[![Open Pull Requests](https://img.shields.io/github/issues-pr/MarketingPipeline/Awesome-Repo-Template.svg "Open Pull Requests")](https://github.com/MarketingPipeline/Awesome-Repo-Template/pulls)
[![Closed Pull Requests](https://img.shields.io/github/issues-pr-closed/MarketingPipeline/Awesome-Repo-Template.svg "Closed Pull Requests")](https://github.com/MarketingPipeline/Awesome-Repo-Template/pulls?utf8=✓&q=is%3Apr+is%3Aclosed)
[![Commit activity](https://img.shields.io/github/commit-activity/m/MarketingPipeline/Awesome-Repo-Template.svg "Commit activity")](https://github.com/MarketingPipeline/Awesome-Repo-Template/graphs/commit-activity)
[![GitHub contributors](https://img.shields.io/github/contributors/MarketingPipeline/Awesome-Repo-Template.svg "Github contributors")](https://github.com/MarketingPipeline/Awesome-Repo-Template/graphs/contributors)
[![Last commit](https://img.shields.io/github/last-commit/MarketingPipeline/Awesome-Repo-Template.svg "Last commit")](https://github.com/MarketingPipeline/Awesome-Repo-Template/commits/master)
[![GitHub tag](https://img.shields.io/github/tag/MarketingPipeline/Awesome-Repo-Template?include_prereleases=&sort=semver&color=blue)](https://github.com/MarketingPipeline/Awesome-Repo-Template/releases/)



_Social buttons_

[![MarketingPipeline - Awesome-Repo-Template](https://img.shields.io/static/v1?label=MarketingPipeline&message=Awesome-Repo-Template&color=blue&logo=github)](https://github.com/MarketingPipeline/Awesome-Repo-Template "Go to GitHub repo")
[![stars - Awesome-Repo-Template](https://img.shields.io/github/stars/MarketingPipeline/Awesome-Repo-Template?style=social)](https://github.com/MarketingPipeline/Awesome-Repo-Template)
[![forks - Awesome-Repo-Template](https://img.shields.io/github/forks/MarketingPipeline/Awesome-Repo-Template?style=social)](https://github.com/MarketingPipeline/Awesome-Repo-Template)



_Call-to-Action buttons_



[![Use this template](https://img.shields.io/badge/Generate-Use_this_template-2ea44f?style=for-the-badge)](https://github.com/MarketingPipeline/Awesome-Repo-Template/generate)

[![View site - GH Pages](https://img.shields.io/badge/View_site-GH_Pages-2ea44f?style=for-the-badge)](https://marketingpip.github.io/Awesome-Repo-Template/)


_Documentation button_


[![view - Documentation](https://img.shields.io/badge/view-Documentation-blue?style=for-the-badge)](/README.MD "Go to project documentation")


_Custom button_

<img alt="Custom Shield.io Button" src="https://img.shields.io/badge/Custom-Button-blue.svg?style=flat-square"></img>	


<br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	 <br>	
</details>
	
<br>	 
	 

<details><summary>Auto Generated Table Of Contents <b> Demo</b>:</summary>
<br>
<!------- Table Of Contents Will Auto Generate In Side Of Here ---- >

<!-- toc -->

- [Features:](#features)
- [Example and Usage](#example-and-usage)
- [Contributing <a href="https://github.com/MarketingPipeline/Awesome-Repo-Template/graphs/contributors"> ![GitHub](https://img.shields.io/github/contributors/MarketingPipeline/Awesome-Repo-Template) </a>](#contributing-a-hrefhttpsgithubcommarketingpipelineawesome-repo-templategraphscontributors-githubhttpsimgshieldsiogithubcontributorsmarketingpipelineawesome-repo-template-a)
- [License <a href="LICENSE"> ![GitHub](https://img.shields.io/github/license/MarketingPipeline/Awesome-Repo-Template) </a>](#license-a-hreflicense-githubhttpsimgshieldsiogithublicensemarketingpipelineawesome-repo-template-a)

<!-- tocstop -->

</details>
	
 
	
<br>	 
<details>
<summary> How to setup GitHub bots </summary>

<br>
These are bots that are prepared and configured for this template. They need to be activated to properly work.

<br>
<br>

1. The `issue_label_bot.yaml` file depends on the **issue label bot** [Activate it or check its documentation](https://github.com/marketplace/issue-label-bot)(✓ highly recommended).
2. The `settings.yml` file depends on the **settings label bot** [Activate it or check its documentation](https://probot.github.io/apps/settings/) (optional).
3. The `config.yml` file depends on the bot **welcome bot** [Activate it or check its documentation](https://probot.github.io/apps/welcome/) and [to-do bot](https://probot.github.io/apps/todo/) (optional).

</details>





## Contributing <a href="https://github.com/MarketingPipeline/Awesome-Repo-Template/graphs/contributors"> ![GitHub](https://img.shields.io/github/contributors/MarketingPipeline/Awesome-Repo-Template) </a>

Want to improve this template? Create a pull request with detailed changes / improvements! If approved you will be added to the list of contributors of this awesome repo template!

See also the list of
[contributors](https://github.com/MarketingPipeline/Awesome-Repo-Template/graphs/contributors) who
participate in this project.

## License <a href="LICENSE"> ![GitHub](https://img.shields.io/github/license/MarketingPipeline/Awesome-Repo-Template) </a>

This project is licensed under the MIT License - see the
[LICENSE.md](https://github.com/MarketingPipeline/Awesome-Repo-Template/blob/main/LICENSE) file for
details.




