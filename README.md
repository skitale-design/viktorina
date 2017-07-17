Программа "Викторина"
*Автор: Ильин Александр Ruby(2.4.1)*


*Вопросы взяты с сайта: https://klub-drug.ru/viktorina/voprosy-dlya-viktoriny-s-otvetami.html*


**Описание**


Программа берет из файла `q_and_a.xml` вопросы и выводит на экран вопрос и варианты ответов на него. Пользователь вводит верный ответ, а программа проверяет верный он или нет. Затем выводит результат проверки и развернутый вариант правильного ответа. 

**Пример вопроса из файла `q_and_a.xml`:**

 ```
 <question_text> Сколько на Земле материков начинаются на букву «А»? </question_text>
		<answers>
			<answer right="true">5</answer>
			<answer>4</answer>
			<answer>6</answer>
		</answers>
		<explanation> Всего 5 материков: Америки Северная и Южная, Африка, Антарктида, Австралия. </explanation>

```

**Запуск программы**

Запустить файл `main.rb` в консоли Ruby:

```
D:\>ruby main.rb

 Сколько на Земле материков начинаются на букву <А>?

--> 5

--> 4

--> 6

Введите номер ответа:5

Верно!

 Сколько суток составляют високосный год?

--> 365.5

--> 366

--> 365

Введите номер ответа:633

Не верно :(

Правильный ответ:  Всего 366 суток

```