-- Разделим конфигурации для обычного использования Neovim и для VSCode
if vim.g.vscode then
	require('vscode')
else
	-- Импортируем основные настройки
	require('settings')

	-- Выключаем встроенные плагины
	require('disable_builtins')

	-- Подключаем плагины
	require('plugins/install_list/init')

	-- Подгружаем горячие клавиши
	require('keybindings/main')
end
