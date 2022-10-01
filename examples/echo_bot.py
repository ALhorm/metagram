import metagram


bot = metagram.Bot("BOT_TOKEN")


def main(message):
	bot.send_message(message["chat_id"], message["text"])


bot.polling(main)
