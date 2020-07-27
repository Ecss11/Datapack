# 在线时间为 50 后显示通知
execute as @a[scores={online=50}] at @s run tellraw @s [{"text":"欢迎来到rua服务器， ","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"点我进入论坛","color":"aqua","bold":false,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"open_url","value":"https://ruabbs.com"}}]
# 设置在线时间为 100 避免多次显示
execute as @a[scores={online=50}] at @s run scoreboard players set @s online 100

# 在线时间为 50 或更大，并且退出过一次或更多次服务器，则显示通知
execute as @a[scores={logout=1}] at @s run tellraw @s [{"text":"欢迎来到rua服务器， ","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"点我进入论坛","color":"aqua","bold":false,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"open_url","value":"https://ruabbs.com"}}]
# 重置退出次数为 0
execute as @a[scores={logout=1}] at @s run scoreboard players reset @s logout