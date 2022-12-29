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


