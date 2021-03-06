# News Application

This application shows the current news from all over the world.

## Demo
<img src="https://github.com/ArpitSachan/News-Application/blob/master/images/GIF-200721_163245.gif" width=250>

</br>

## Setup

Clone the repo

```
$ git clone https://github.com/ArpitSachan/News-Application
```

Install dependencies

```
$ flutter packages get
```

Setup [**newsapi.org**](https://newsapi.org/)

Create account to get your own API key and replace ``` YOUR_API_KEY ``` in [Constants](https://github.com/ArpitSachan/News-Application/blob/master/lib/constants.dart) file.
``` dart
class Constants {
  static String TOP_HEADLINES_URL= "https://newsapi.org/v2/top-headlines?country=us&apiKey=YOUR_API_KEY";


  static String headlinesfor(String keyword){
    return "https://newsapi.org/v2/everything?q=$keyword&apiKey=YOUR_API_KEY";
  }
}
```

Run the app

```
$ flutter run -v
```

## Thanks

**Arpit Sachan** © 2019+, Released under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

> GitHub [@ArpitSachan](https://github.com/ArpitSachan) &nbsp;&middot;&nbsp;
> LinkedIn [@arpitsachan936340117](https://www.linkedin.com/in/arpit-sachan-936340117/)
