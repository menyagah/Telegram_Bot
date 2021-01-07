
<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->





<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![License: MIT][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/menyagah/Telegram_Bot">
    <img src="https://user-images.githubusercontent.com/24241962/103855601-14efbd00-50c4-11eb-862c-05691381dccc.png" alt="Logo" width="170" height="170">
  </a>

  <h3 align="center">Telegram Bot</h3>

  <p align="center">
    A telegram bot that sells phones to users.
    <br />
    <a href="https://github.com/menyagah/Telegram_Bot/tree/feature"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/menyagah/Telegram_Bot/issues">Report Bug</a>
    ·
    <a href="https://github.com/menyagah/Telegram_Bot/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project

![image](https://user-images.githubusercontent.com/24241962/103855134-0b198a00-50c3-11eb-9be4-ea26a668b32d.png)

This is a telegram bot that serves as a sales bot. The bot displays a range of items available on a fictional
shop with their prices. The user can then pick the item they are interested in and the bot can then go ahead and send a notification to its owner with a link to the buyer for him to finalise the purchase.

### Built With

* Ruby
* Telegram Bot Api


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

* Ruby 
    for linux users:
    ```sh
    $ sudo apt-get install ruby-full
    ```

### Installation

1. Clone the repo

    ```sh
    git clone https://github.com/menyagah/Telegram_Bot.git
    ```

2.  Telegram Bot Father

    Having installed ruby, we also need to have a telegram account in order to obtain our A.P.I token code 
    and also create the channel for our new bot. To do this we need the help of the bot father. So, search for BotFather on your telegram app. Tap on the channel and type /start. After that we only need to create a new bot so type /newbot and follow the instructions of the bot father. Copy the token given by bot father and paste it in the bot.rb file on the token variable. 

3.  Set-up Chat Id

    * Search for (Telegram Bot Raw) on your telegram app
    * Type /start on the channel
    * Copy your id from the json output. 
      - It is labelled as "id" : xxxxxx


4. Install dependencies 

    ```sh
    run bundle install
    ```

5. Start local server

    ```sh
    cd Telegram_bot/main
    ```

    then

      
    ```sh
    ruby main.rb
    ```
    



<!-- USAGE EXAMPLES -->
## Usage

![image](https://user-images.githubusercontent.com/24241962/103857734-1b803380-50c8-11eb-969a-583815c7465a.png)

1. Open your telegram app. Navigate to BotFather and click on the link provided to your bot.
2. Use the following commands to interact with the app
   - `/start` - to start the bot
   - `/phones` - to view the phones on sale
   - `/iphone {5/6/8/10/11/12}` - to purchase the phone of your choice
   - `/yes {5/6/8/10/11/12}` - to purchase a particular phone
   - `/agent` - to send a notification to the customer care agents

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/menyagah/Telegram_Bot/issues) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Martin Nyagah - [@Martinnyaga20](https://twitter.com/Martinnyaga20) - menyagah27@gmail.com


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [TelegramBotAPI](https://core.telegram.org/bots/api)
* README Icon made by <a href="http://www.freepik.com/" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon"> www.flaticon.com</a>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/tirthajyoti-ghosh/weather-app.svg?style=flat-square
[contributors-url]: https://github.com/menyagah/Telegram_Bot/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/menyagah/Telegram_Bot.svg?style=flat-square
[forks-url]: https://github.com/menyagah/Telegram_Bot/network/members
[stars-shield]: https://img.shields.io/github/stars/menyagah/Telegram_Bot.svg?style=flat-square
[stars-url]: https://github.com/menyagah/Telegram_Bot/stargazers
[issues-shield]: https://img.shields.io/github/issues/menyagah/Telegram_Bot.svg?style=flat-square
[issues-url]: https://github.com/menyagah/Telegram_Bot/issues
[license-shield]: https://img.shields.io/badge/License-MIT-yellow.svg
[license-url]: https://github.com/menyagah/Telegram_Bot/blob/development/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/martin-nyagah-a29b8610b/

