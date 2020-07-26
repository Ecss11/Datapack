# 在线时间为 100 后显示通知
execute as @a[scores={Online=100}] at @s run tellraw @s [{"text":"欢迎来到RUA服务器，这使你充满了决心","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"open_url","value":"https://ruabbs.com"},"hoverEvent":{"action":"show_text","value":"点击此处打开 RUA 论坛"}}]
# 设置在线时间为 200 避免多次显示
execute as @a[scores={Online=100}] at @s run scoreboard players set @s Online 200

# 在线时间为 100 或更大，并且退出过一次或更多次服务器，则显示通知
execute as @a[scores={Online=100.., Logout=1..}] at @s run tellraw @s [{"text":"欢迎来到RUA服务器，这使你充满了决心","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"open_url","value":"https://ruabbs.com"},"hoverEvent":{"action":"show_text","value":"点击此处打开 RUA 论坛"}}]
# 重置退出次数为 0，所以为什么要设置退出一次或更多啊233
execute as @a[scores={Online=100.., Logout=1..}] at @s run scoreboard players set @s Logout 0