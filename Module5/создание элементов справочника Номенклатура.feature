#language: ru

@tree

Функционал: создание элементов справочника Номенклатура

Как Тестировщик я хочу
выполнить нагрузоное тестирование
чтобы убедиться в устойчивости системы   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание элементов справочника Номенклатура
И В командном интерфейсе я выбираю "Справочники" "Номенклатура"
Тогда открылось окно "Номенклатура"
И я нажимаю на кнопку с именем 'FormCreate'
И Я запоминаю значение выражения '1' в переменную "Шаг"
И я делаю 10 раз
	И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
	И Я запоминаю значение выражения '"Тестовая номенклатура" + $Шаг$' в переменную "Наименование"
	И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru'         | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| 'e1cib/data/Catalog.Items?ref=8d1d38d57aefa1b611f17d34bd03c23b' | 'False'        | 1      | 'e1cib/data/Catalog.ItemTypes?ref=8d1d38d57aefa1b611f17d34bd03c239' | 'e1cib/data/Catalog.Units?ref=8d1d38d57aefa1b611f17d34bd03c23a' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | ''       | '000001' | ''            | ''               | ''                 | 'Тестовая номенклатура'  | ''               |          |          |          |          |         |
		| 'e1cib/data/Catalog.Items?ref=8d1d38d57aefa1b611f17d34bd03c23c' | 'False'        | 2      | 'e1cib/data/Catalog.ItemTypes?ref=8d1d38d57aefa1b611f17d34bd03c239' | 'e1cib/data/Catalog.Units?ref=8d1d38d57aefa1b611f17d34bd03c23a' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | ''       | '000003' | ''            | ''               | ''                 | 'Без Б'                  | ''               |          |          |          |          |         |
		| 'e1cib/data/Catalog.Items?ref=8d1d38d57aefa1b611f17d34bd03c23d' | 'True'         | 3      | 'e1cib/data/Catalog.ItemTypes?ref=8d1d38d57aefa1b611f17d34bd03c239' | 'e1cib/data/Catalog.Units?ref=8d1d38d57aefa1b611f17d34bd03c23a' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | ''       | ''       | ''            | ''               | ''                 | 'Тестовая номенклатура2' | ''               |          |          |          |          |         |
