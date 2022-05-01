const token = '5358878150:AAGp0hPFvxatptJ5IQWA0YaymkwqQ3JuTkQ';

const TelegramBot = require('node-telegram-bot-api');
const mysql = require('mysql2');
const bot = new TelegramBot(token, { polling: true });

const con = mysql.createConnection({
	
	host: '127.0.0.1',
	user: 'root',
	database: 'helperfish',
	password: ''
	
});

con.connect();

const sql = 'SELECT * FROM fish';

bot.on('message', function(msg){
	
	var data = msg.text.split('\n');
	
	data = data.map(function(el){
		
		return el.toLowerCase().trim();
		
	});
	
	console.log(data);return;
	
	if(data[0] == 'price')
	{
		for(var i = 1; i < data.length; i++)
		{
			var sql = 'UPDATE fish SET price = ' + data[i] + ' WHERE id = ' + i;
			con.execute(sql);
		}
		
		bot.sendMessage(msg.chat.id, 'Price updated!');
		return;
	}
	
	data = data.map(function(el){
		
		return '\'' + el + '\'';
		
	});
	
	var selIn = '(' + data.join(',') + ')';
	var sql = 'SELECT title, price FROM fish WHERE title IN '+selIn+' ORDER BY price DESC'
	
	con.execute(sql, function(error, result, fields){
	
		var response = '';
	
		result.forEach(function(el){
			
			response += el.title + ' - ' + el.price + '\n';
		});
		
		bot.sendMessage(msg.chat.id, response);
		
	});
	
});