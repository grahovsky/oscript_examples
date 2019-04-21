Функция Сложить(Слагаемое1, Слагаемое2) Экспорт

    РеальноеСлагаемое1 = ПолучитьРеальноеСлагаемое(Слагаемое1);
    РеальноеСлагаемое2 = ПолучитьРеальноеСлагаемое(Слагаемое2);

    Возврат РеальноеСлагаемое1 + РеальноеСлагаемое2;

КонецФункции

Функция ПолучитьРеальноеСлагаемое(Слагаемое)

    Если ТипЗнч(Слагаемое) = Тип("Число") Тогда
        РеальноеСлагаемое = Слагаемое;
    Иначе
        РеальноеСлагаемое = Слагаемое.Получить();
    КонецЕсли;

    Возврат РеальноеСлагаемое;

КонецФункции

Функция ВыполнитьВычисление(ТипОперации, Операнд1, Операнд2) Экспорт
    
    Если ТипОперации = ТипыОпераций.Сложение Тогда
        Возврат Сложить(Операнд1, Операнд2);
    ИначеЕсли ТипОперации = ТипыОпераций.Умножение Тогда
        Возврат Умножить(Операнд1, Операнд2);
    Иначе
        ВызватьИсключение "Неизвестный тип операции";
    КонецЕсли;

КонецФункции
 
Функция Умножить(Множитель1, Множитель2) Экспорт
    
    РеальныйМножитель1 = ПолучитьРеальноеСлагаемое(Множитель1);
    РеальныйМножитель2 = ПолучитьРеальноеСлагаемое(Множитель2);
    Возврат РеальныйМножитель1 * РеальныйМножитель2;

КонецФункции