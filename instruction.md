## Инструкция по подготовке компьютеров в 3 аудитории

### Установка Debian 12
> Для установки использовать образ из этого репозитория, либо с официального сайта Debian. Главное, чтобы версия совпадала.

На приветственном экране установщика выбираем графический тип установки - **Graphical install**:

![ScreenShot](assets/1.png)

Язык установщика и стандартный язык системы - **English**:

![ScreenShot](assets/2.png)

При выборе локации сначала выбираем **Other**;

![ScreenShot](assets/3.png)

В следующем меню выбираем **Europe**:

![ScreenShot](assets/4.png)

Выбираем страну **Russian Federation**:

![ScreenShot](assets/5.png)

Выбираем локаль **en_US.UTF-8**:

![ScreenShot](assets/6.png)

Раскладка клавиатуры - **American English**:

![ScreenShot](assets/7.png)

**Хостнейм** нужно установить в соответствии с номером компьютера (решите на месте) в формате 3-XX, где XX - число от 1 до 30. Пример:

![ScreenShot](assets/8.png)

Поле **Domain name** оставить пустым:

![ScreenShot](assets/9.png)

Для **root** нужно поставить пароль **kpk3ka$228**:

![ScreenShot](assets/10.png)

Полное имя нового пользователя - **student**:

![ScreenShot](assets/11.png)

**Username** аккаунта оставить аналогичным.

Паролем для новом пользователя аналогично установить **student**:

![ScreenShot](assets/12.png)

Системное время - **московское**:

![ScreenShot](assets/13.png)

При разметке дисков выбрать режим **Manual**:

![ScreenShot](assets/14.png)

Далее выбрать диск типа **nvme**, если присутствует. Если оба диска типа sd(a/b), выбрать меньший по объему:

![ScreenShot](assets/15.png)

Создаем **новую разметку диска, нажава Yes**:

![ScreenShot](assets/16.png)

Далее необходимо тыкнуть на пустое пространство (строка, оканчивающаяся на **FREE SPACE**):

![ScreenShot](assets/17.png)

Выберите пункт **Create a new partition**:

![ScreenShot](assets/18.png)

Максимальный размер оставляйте по умолчанию.

Тип разметки - **Первичный** (Primary):

![ScreenShot](assets/19.png)

Настройки тома оставить по умолчанию, как на скриншоте:

![ScreenShot](assets/20.png)

Нажать кнопку **Done setting up the partition**.

Аналогично проделать все шаги для второго диска с монтированием в **/home**, как показано ниже:

![ScreenShot](assets/21.png)

Нажать **Finish partitioning and write changes to disk**.

Установщик предупредит об отсутствии **swap** раздела. Нажимаем **No** и продолжаем:

![ScreenShot](assets/22.png)

Соглашаемся с применением всех изменений на диске:

![ScreenShot](assets/23.png)

Отказываемся от дополнительного сканирования медиа:

![ScreenShot](assets/24.png)

Для выбора ближайшего зеркала оставляем страну **Russian Federation**:

![ScreenShot](assets/25.png)

В качестве зеркала оставляем **deb.debian.org**:

![ScreenShot](assets/26.png)

Информацию о прокси не заполняем.

Отказываемся от отправки данных на аналитику:

![ScreenShot](assets/27.png)

В качестве окружения рабочего стола ставим **Cinnamon**:

![ScreenShot](assets/28.png)

Соглашаемся на установку GRUB:

![ScreenShot](assets/29.png)

Здесь выбираем диск, на которой была была установлена система (мы выбирали его первым при разметке):

![ScreenShot](assets/30.png)

---

### Работа с init.sh
После авторизации необходимо открыть терминал, перейти в режим **root** и выполнить скрипт **init.sh**, предварительно выдав ему права на исполнение:

```bash
su -
chmod +x init.sh
./init.sh
```

Скрипт представлен ниже:

![ScreenShot](assets/31.png)

Первичная инициализация:

![ScreenShot](assets/32.png)

Конец установки при всех правильно совершенных действиях должен выглядеть так:

![ScreenShot](assets/33.png)

Для удобства следует добавить новоприбываший **VMWare Workstation** на рабочий стол:

![ScreenShot](assets/34.png)

Далее запускаем его, соглашаемся с лицензионным соглашением:

![ScreenShot](assets/35.png)

![ScreenShot](assets/36.png)

![ScreenShot](assets/37.png)

Далее следует ввести ключ **MC60H-DWHD5-H80U9-6V85M-8280D** или любой другой [отсюда](https://github.com/hegdepavankumar/VMware-Workstation-Pro-17-Licence-Keys):

![ScreenShot](assets/38.png)

Далее вводим root-пароль (**kpk3ka$228**)

---

**На этом все. Установка Debian 12 и VMWare Workstation 17.5.1 завершена.**
