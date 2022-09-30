# <p align="center">metagram

<p align="center">A modern framework for [!Telegram Bot API](https://core.telegram.org/bots/api) in Python.

## Getting started

**Installation**:
- Installation with pip:
    ```sh
    $ pip install metagram
    ```

- Installation with git:
    ```sh
    $ git clone https://github.com/ALhorm/metagram
    $ cd -rep-
    $ python setup.py install
    ```

## Writing bot

Let's write a simple echo bot. First, let's create a file in which our bot code will be written (let's call it `bot.py`). We put the following code there:

```python
import metagram

bot = metagram.Bot("BOT_TOKEN")

def main(message):
    bot.send_message(message["chat_id"], message["text"])

bot.polling(main)
```

Instead of `BOT_TOKEN`, you must insert the bot token received from BotFather in Telegram. When you do this and run the bot, you will see that it replies to you with the same messages that you write to it.

Okay, let's improve our bot. Let's say we want to make it so that when we send the `/start` command to the bot, it will greet us. This is very easy to do:

```python
import metagram

bot = metagram.Bot("BOT_TOKEN")

@bot.command("start")
def start(message):
    bot.send_message(message["chat_id"], f"Hello {bot.get_from()['first_name']}! My name is {bot.get_me()['first_name']}.")

def main(message):
    start()

bot.polling(main)
```

Now, if we enter the `/start` command, the bot will answer us with a greeting.

You can find full documentation [here](https://www.google.com).
