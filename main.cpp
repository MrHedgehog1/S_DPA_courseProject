#include <iostream>
#include <string>
#include <limits>
#include <cstring>
# define NO_OF_CHARS 256

std::string add_zero(std::string original, size_t need_len);
int hashO(std::string num, int i);

//Пациенты
struct Patient
{
    std::string _regNumber;
    std::string _count_number;
    std::string _localLotNumber;
    int _yearOfBirth;
    std::string _first_name, _last_name, _middle_name;
    std::string _placeOfWork;
    std::string _adress;
    Patient()
    {
    }

    Patient(std::string count_number,
            std::string localLotNumber,
            int yearOfBirth,
            std::string first_name,
            std::string middle_name,
            std::string last_name,
            std::string placeOfWork,
            std::string adress) {
        this->_count_number = add_zero(count_number, 6);
        this->_localLotNumber = localLotNumber;
        this->_yearOfBirth = yearOfBirth;
        this->_first_name = first_name;
        this->_middle_name = middle_name;
        this->_last_name = last_name;
        this->_placeOfWork = placeOfWork;
        this->_adress = adress;
        this->_regNumber = _localLotNumber + _count_number;
    }

    int compare(Patient b)
    {
        return std::string(_localLotNumber + _count_number).compare(std::string(b._count_number + b._localLotNumber ));
    }

    std::string Patient_to_string()
    {
        return _first_name + " " + _middle_name + " " + _last_name + " Регистрационный номер : " +
                get_patient_id() + " Адрес: " + _adress;
    }

    std::string get_patient_id()
    {
        return _localLotNumber + _count_number;
    }

    int compare_patient(std::string bookd)
    {
        return get_patient_id().compare(bookd);
    }
};

//Врачи
struct Doctor
{
    std::string _first_name_and_initials;
    std::string _appointmentSchedule;
    std::string _position;
    int _officeNumber;
    bool is_have;
    bool empty;
    bool deleted = false;
    Doctor()
    {
        empty = true;
    }

    Doctor(std::string first_name_and_initials,
           std::string appointmentSchedule,
           std::string position,
           int officeNumber)
    {
        this->_first_name_and_initials = first_name_and_initials;
        this->_appointmentSchedule = appointmentSchedule;
        this->_position = position;
        this->_officeNumber = officeNumber;
        this ->empty = false;
    }

    std::string doc_to_string()
    {
        return "Имя врача: " + get_first_name_and_initials() + " Часы приёма : " + _appointmentSchedule + " Специализация : " + _position + " Кабинет : " +
               std::to_string(_officeNumber);
    }

    std::string get_first_name_and_initials()
    {
        return _first_name_and_initials;
    }

    int compare(Doctor b)
    {
        return get_first_name_and_initials().compare(b.get_first_name_and_initials());
    }

    int hash(int i)
    {
        return hashO(get_first_name_and_initials(), i);
    }
};

//данные о выданных книгах
struct Referral
{
    //std::string _regNumber;
    std::string _regNumberPatient;
    std::string _doctorFullName;
    std::string _take_time;
    std::string _date_return_time;

    Referral()
    {
    }

    Referral(std::string regNumberPatient,
             std::string doctorFullName,
             std::string take_time,
             std::string _date_return_time)
    {
        this->_regNumberPatient = regNumberPatient;
        this->_doctorFullName = doctorFullName;
        this->_take_time = take_time;
        this->_date_return_time = _date_return_time;
    }

    int compare(Referral b)
    {
        return _doctorFullName.compare(b._doctorFullName);
    }
};

//двунаправленный цикличный список
struct element
{
    Referral data;
    element* next;
    element* prev;
};

//данные о пациентах - авл-дерево
struct node
{
    Patient key;
    int height;
    node* left;
    node* right;

    node(Patient k)
    {
        key = k;
        left = right = nullptr;
        height = 1;
    }
};

int hash_c = 7, hash_d = 17;
int doc_array_size = 4;
const int months[]{ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30 ,31 };		//количество дней в месяце
char chars[10] = { '0', '1', '2','3','4','5','6', '7', '8','9' };		//1 символ ID пациента
node* main_patient = nullptr;
element* head = nullptr;
int referral_count = 0;


void sort_referral(int l, int r);
node* get_patient(node* p, std::string id);
bool check_string(std::string original);
int hash_first(std::string num);
bool is_substring(std::string official, std::string find);
void add(element*& head, Referral data);
Referral remove(element*& head, int pos);
element* get_element_at(element*& head, int pos);
void sort_referral(int l, int r);
void delete_referral_dock_num(std::string doc_id);
void delete_referral_patient_docd(std::string patient_docd);
int height(node* p);
int bfactor(node* p);
void fixheight(node* p);
node* rotateright(node* p);
node* rotateleft(node* q);
node* balance(node* p);
node* insert(node* p, Patient k);
node* findmin(node* p);
node* removemin(node* p);
//Хэш-таблица в программе
Doctor* doctors_array = new Doctor[doc_array_size];
void look_all_patients(node* p);
void remove_all(node*& p);
node* remove(node* p, std::string patient_docd);
void find_patient_docd(node* p, std::string patient_docd);
void find_patient_name(node* p, std::string name);
void add_doctor(Doctor a);
bool check_error();
std::string readDate();
void read_patient();
void read_doctor();
void look_all_doctors();
void extend_table();
void delete_doc(std::string num);
Doctor* get_doc(std::string num);
void find_doc_num(std::string num);
void find_doc_name(std::string posi);
void read_referral();
void return_referral();
//void add_book_library();
void remove_doctor();
void delete_all_doctors();
node* get_patient(node* p, std::string id);
void help_command();
short inputValidationShort(short min, short max);
bool inputValidation(char chr, bool message);
void print_all_given_referral();
std::string readTime();
void badCharHeuristic(std::string str, int size, int badchar[NO_OF_CHARS]);
int max(int a, int b);
void start();


int main()
{
    start();
    unsigned short command;
    std::string str;
    bool exit = false;
    while (!exit)
    {
        help_command();
        command = inputValidationShort(1, 17);
        switch (command)
        {
            case 1:
                read_patient();
                break;
            case 3:
                look_all_patients(main_patient);
                break;
            case 2:
                std::cout << "Введите регистрационный номер вида MMNNNNNN,\n"
                          << "где MM – номер участка (цифры); NNNNNN – порядковый номер\n"
                             "(цифры)." << std::endl;
                std::cin.ignore((std::numeric_limits<short>::max)(), '\n');
                getline(std::cin, str);
                main_patient = remove(main_patient, str);
                break;
            case 4:
                remove_all(main_patient);
                while (head != nullptr)
                {
                    remove(head, 0);
                }
                break;
            case 5:
                std::cout << "Введите регистрационный номер в формате MMNNNNNN " << std::endl;
                std::cin.ignore();
                getline(std::cin, str);
                find_patient_docd(main_patient, str);
                break;
            case 6:
                std::cout << "Ведите имя пациента: ";
                std::cin.ignore();
                std::cin >> str;
                std::cout << "----------" << std::endl;
                find_patient_name(main_patient, str);
                break;
            case 7:
                read_doctor();
                break;
            case 8:
                remove_doctor();
                break;
            case 9:
                look_all_doctors();
                break;
            case 10:
                delete_all_doctors();
                while (head != nullptr) {
                    remove(head, 0);
                }
                break;
            case 11:
                std::cout << "Введите имя врача : ";
                std::cin >> str;
                find_doc_num(str);
                break;
            case 12:
                std::cin.clear();
                std::cout << "Введите специализацию врача : " << std::endl;
                std::cin.ignore();
                getline(std::cin, str);
                find_doc_name(str);
                break;
            case 13:
                read_referral();
                break;
            case 14:
                return_referral();
                break;
            case 15:
                print_all_given_referral();
                break;
            case 16:
                exit = true;
                break;
            default:
                break;
        }
        if (command == 17)
            break;
    }
    return 0;
}

bool check_string(std::string original)
{
    bool flag = true;
    for (size_t i = 0; i < original.length(); ++i) {
        flag = false;
        for (int j = 0; j < 10; ++j) {
            if (original[i] == chars[j]) {
                flag = true;
                break;
            }
        }
        if (!flag) {
            break;
        }
    }
    return flag;
}

//добавление нулей в номер при недостаточном количестве цифр
std::string add_zero(std::string original, size_t need_len) {
    std::string temp = original;
    while (temp.length() < need_len)
    {
        temp = "0" + temp;
    }
    return temp;
}

//Основная хэш-функция в программе
int hash_first(std::string num) {
    int hash = 0;
    int pow = 1;
    for (size_t i = 0; i < num.length(); ++i) {
        hash += (num[i]) * pow;
        pow *= 3;
    }
    return hash;
}

int hashO(std::string num, int i)
{
    int temp = hash_first(num);
    if (temp < 0)
    {
        return -temp;
    }
    return temp;
}
// Вспомогательная функция для получения большего из двух целых чисел
int max(int a, int b)
{
    return (a > b) ? a : b;
}

// Функция предварительной обработки для bad character Бойера Мура
void badCharHeuristic(std::string str, int size, int badchar[NO_OF_CHARS])
{
    int i;

    // Инициализация массива -1
    for (i = 0; i < NO_OF_CHARS; i++)
        badchar[i] = -1;

    // Заполнение фактического значения последнего появления символа
    for (i = 0; i < size; i++)
        badchar[(int) str[i]] = i;
}


// поиск слова в тексте по алгоритму Бойера — Мура
bool is_substring(std::string official, std::string find)
{
    int m = find.length();
    int n = official.length();

    int badchar[NO_OF_CHARS];

    badCharHeuristic(find, m, badchar);

    int s = 0; // s is shift of the pattern with respect to text

    while (s <= (n - m))
    {
        int j = m - 1;

        while (j >= 0 && find[j] == official[s + j])
            j--;
        if (j < 0)
        {
            printf("\n pattern occurs at shift = %d\n", s);
            return true;
            s += (s + m < n) ? m - badchar[official[s + m]] : 1;
        }
        else
            s += max(1, j - badchar[official[s + j]]);
    }
    return false;
}

void add(element*& head, Referral data)
{
    element* cur = head;
    if (head == nullptr)
    {
        head = new element();
        head->data = data;
        head->next = head->prev = head;
    }
    else
    {
        element* temp = new element();
        temp->data = data;
        temp->next = head;
        head->prev->next = temp;
        temp->prev = head->prev;
        head->prev = temp;
    }
    ++referral_count;
    sort_referral(0, referral_count - 1); //!!!!!!!!!!!!!!!!!
}

Referral remove(element*& head, int pos)
{
    element* cur = head;
    int count = 0;
    while (count != pos)
    {
        cur = cur->next;
        ++count;
    }
    Referral temp = cur->data;
    cur->prev->next = cur->next;
    cur->next->prev = cur->prev;
    delete cur;
    --referral_count;
    return temp;
}

element* get_element_at(element*& head, int pos)
{
    if (head == nullptr)
    {
        return nullptr;
    }
    element* cur = head;
    int count = 0;
    while (count != pos)
    {
        cur = cur->next;
        ++count;
    }
    return cur;
}

//Быстрая сортировка (Хоара)
void sort_referral(int l, int r)
{
    int i = l, j = r, middle = (l + r) / 2;
    Referral x = get_element_at(head, middle)->data;
    element* i_element = get_element_at(head, i), * j_element = get_element_at(head, j);
    do {
        while (i_element->data.compare(x) < 0)
        {
            i_element = i_element->next;
            ++i;
        }
        while (j_element->data.compare(x) > 0)
        {
            j_element = j_element->prev;
            --j;
        }
        if (i <= j)
        {
            Referral temp = i_element->data;
            i_element->data = j_element->data;
            j_element->data = temp;
            i_element = i_element->next;
            ++i;
            j_element = j_element->prev;
            --j;
        }
    } while (i <= j);
    if (i < r)
    {
        sort_referral(i, r);
    }
    if (l < j)
    {
        sort_referral(l, j);
    }
}

void delete_referral_dock_num(std::string doc_id)
{
    element* cur = head;
    int pos = 0;
    if (head == nullptr)
    {
        std::cout << "Записи не существует." << std::endl;
    }
    else
    {
        while (cur->next != head && cur->data._doctorFullName.compare(doc_id) != 0)
        {
            cur = cur->next;
            ++pos;
        }
        if (cur->data._doctorFullName.compare(doc_id) != 0)
        {
            std::cout << "Записи не существует." << std::endl;
            return;
        }
        remove(head, pos);
        std::cout << "Удалено." << std::endl;
    }
}

void delete_referral_patient_docd(std::string patient_docd)
{
    element* cur = head;
    int pos = 0;
    if (head == nullptr)
    {
        std::cout << "Записи не существует" << std::endl; //!!!!!!!!!!!!!!!!!!!!!!
    }
    else
    {
        do {
            while (cur->next != head && cur->data._regNumberPatient.compare(patient_docd) != 0)
            {
                cur = cur->next;
                ++pos;
            }
            if (cur->data._regNumberPatient.compare(patient_docd) != 0)
            {
                std::cout << "Записи не существует" << std::endl; //!!!!!!!!!!!!!!!!!!!!!!
                return;
            }
            cur = cur->next;
            remove(head, pos);
        } while (head != nullptr && cur != head);
        std::cout << "Удалено." << std::endl;
        if (referral_count > 1) //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        {
            sort_referral(0, referral_count - 1);
        }
    }
}

int height(node* p)
{
    return p ? p->height : 0;
}

int bfactor(node* p)
{
    return height(p->right) - height(p->left);
}

void fixheight(node* p)
{
    int hl = height(p->left);
    int hr = height(p->right);
    p->height = (hl > hr ? hl : hr) + 1;
}

node* rotateright(node* p)
{
    node* q = p->left;
    p->left = q->right;
    q->right = p;
    fixheight(p);
    fixheight(q);
    return q;
}

node* rotateleft(node* q)
{
    node* p = q->right;
    q->right = p->left;
    p->left = q;
    fixheight(q);
    fixheight(p);
    return p;
}

node* balance(node* p)
{
    fixheight(p);
    if (bfactor(p) == 2)
    {
        if (bfactor(p->right) < 0)
            p->right = rotateright(p->right);
        return rotateleft(p);
    }
    if (bfactor(p) == -2)
    {
        if (bfactor(p->left) > 0)
            p->left = rotateleft(p->left);
        return rotateright(p);
    }
    return p;
}

node* insert(node* p, Patient k)
{
    if (!p)
    {
        std::cout << "Пациент добавлен." << std::endl;
        return new node(k);
    }
    int comp = k.compare(p->key);
    if (comp == 0)
    {
        std::cout << "Пациент уже существует." << std::endl;
        return balance(p);
    }
    if (comp < 0)
    {
        p->left = insert(p->left, k);
    }
    else
    {
        p->right = insert(p->right, k);
    }
    return balance(p);
}

node* findmin(node* p)
{
    return p->left ? findmin(p->left) : p;
}

node* removemin(node* p)
{
    if (p->left == 0)
    {
        return p->right;
    }
    p->left = removemin(p->left);
    return balance(p);
}

//Обратный обход дерева
void look_all_patients(node* p)
{
    if (!p) {
        return;
    }
    look_all_patients(p->left);
    look_all_patients(p->right);
    std::cout << p->key.Patient_to_string() << std::endl << "---" << std::endl;
}

//
void remove_all(node*& p)
{
    if (!p)
    {
        return;
    }
    remove_all(p->left);
    remove_all(p->right);
    delete p;
    p = nullptr;
}

//
node* remove(node* p, std::string patient_docd)
{
    if (!p) return nullptr;
    int comp = patient_docd.compare(p->key.get_patient_id());
    if (comp < 0)
    {
        p->left = remove(p->left, patient_docd);
    }
    else if (comp > 0)
    {
        p->right = remove(p->right, patient_docd);
    }
    else	// k == p->key
    {
        node* q = p->left;
        node* r = p->right;
        delete_referral_patient_docd(p->key.get_patient_id());
        delete p;
        if (!r)
        {
            return q;
        }
        node* min = findmin(r);
        min->right = removemin(r);
        min->left = q;
        return balance(min);
    }
    return balance(p);
}

//
void find_patient_docd(node* p, std::string patient_docd)
{
    if (!p)
    {
        std::cout << "Нет пациента" << std::endl;
        return;
    }
    int comp = patient_docd.compare(p->key.get_patient_id());
    if (comp < 0)
    {
        find_patient_docd(p->left, patient_docd);
    }
    else if (comp > 0)
    {
        find_patient_docd(p->right, patient_docd);
    }
    else // k == p->key
    {
        std::cout << p->key.Patient_to_string() << std::endl;
    }
}

//поиск пациента по имени
void find_patient_name(node* p, std::string name)
{
    if (!p)
    {
        return;
    }
    if (is_substring(p->key._first_name, name) ||
        is_substring(p->key._middle_name, name) ||
        is_substring(p->key._last_name, name))
    {
        std::cout << p->key.Patient_to_string() << std::endl;
        std::cout << "----------" << std::endl;
    }
    find_patient_name(p->left, name);
    find_patient_name(p->right, name);
}

//
void add_doctor(Doctor a)
{
    int hs;
    int i = 0;
    while (true)
    {
        if (i == doc_array_size)
        {
            extend_table();
        }
        hs = a.hash(i) % doc_array_size;
        if (doctors_array[hs].empty)
        {
            doctors_array[hs] = a;
            break;
        }
        else if (doctors_array[hs].compare(a) == 0)
        {
            std::cout << "Запись уже существует." << std::endl;
            return;
        }
        ++i;
    }
}

//проверка ошибки ввода
bool check_error()
{
    if (std::cin.fail())
    {
        std::cin.clear();
        while (std::cin.get() != '\n');
        std::cout << "Ошибка ввода." << std::endl;
        return true;
    }
    return false;
}

//ввод даты
std::string readTime()
{
    std::string input;
    std::string res;
    int hour, minits;

    std::cout << " В котором часу : ";
    std::cin >> hour;
    if (!std::cin.fail())
    {
        if (hour <= 0 || hour > 24)
        {
            std::cout << "Ошибка ввода часа." << std::endl;
            return "";
        }
    }

    std::cout << "Во сколько минут: ";
    std::cin >> minits;

    if (!std::cin.fail())
    {
        if (minits <= 0 || minits > 59)
        {
            std::cout << "Ошибка ввода минут." << std::endl;
            return "";
        }
        return std::to_string(hour) + ":" + std::to_string(minits);
    }
    return "";
}

std::string readDate()
{
    std::string input;
    std::string res;
    int day, month, year;

    std::cout << "Ввод дня: ";
    std::cin >> day;
    if (!std::cin.fail())
    {
        if (day <= 0)
        {
            std::cout << "Ошибка ввода дня." << std::endl;
            return "";
        }
    }

    std::cout << "Ввод месяца: ";
    std::cin >> month;

    if (!std::cin.fail())
    {
        if (month <= 0 || month > 12)
        {
            std::cout << "Ошибка ввода месяца." << std::endl;
            return "";
        }
        if (months[month - 1] <= day)
        {
            std::cout << "Ошибка ввода дня." << std::endl;
            return "";
        }
    }
    std::cout << "Ввод года: ";
    std::cin >> year;

    if (!std::cin.fail())
    {
        if (year <= 1900 || year >= 2025)
        {
            std::cout << "Ошибка ввода года.";
            return "";
        }
        return std::to_string(day) + "/" + std::to_string(month) + "/" + std::to_string(year);
    }
    return "";
}
//добавление больного
void read_patient()
{
    int count_number = 0;
    char localLotNumber[2];
    int yearOfBirth = 0;
    std::string first_name, last_name, middle_name;
    std::string placeOfWork;
    std::string adress;
    std::string input;
    bool is_error;
    int count = 0;
    std::cin.ignore((std::numeric_limits<short>::max)(), '\n');
    do {
        std::cout << "Введите регистрационный номер больного в формате 'MM-NNNNNN': " << std::endl;
        getline(std::cin, input);
        is_error = check_error();
        if (!is_error)
        {
            count = sscanf(input.c_str(), "%2s%6d", localLotNumber, &count_number);
            if (count != 2)
            {
                std::cout << "Ошибка регистрационного номеа больного." << std::endl;
            }
        }
    } while (is_error || count != 2 || !check_string(localLotNumber));
    do {
        std::cout << "Введите имя, фамилию и отчество: " << std::endl;
        std::cin >> first_name >> middle_name >> last_name;
        is_error = check_error();
        if (!is_error)
        {
            getline(std::cin, input);
            if (!input.empty())
            {
                std::cout << "Ошибка ввода имени." << std::endl;
            }
        }
    } while (is_error || !input.empty());
    do {
        std::cout << "Введите место работы пациента: ";
        getline(std::cin, placeOfWork);
        if (placeOfWork.empty())
        {
            std::cout << "Ошибка ввода данных места работы." << std::endl;
        }
    } while (placeOfWork.empty());
    do {
        std::cout << "Введите адрес: ";
        getline(std::cin, adress);
        if (adress.empty())
        {
            std::cout << "Ошибка ввода адреса." << std::endl;
        }
    } while (adress.empty());
    do {
        std::cout << "Введите год рождения пациента: ";
        std::cin >> yearOfBirth;
        if (!yearOfBirth)
        {
            std::cout << "Ошибка ввода года родения." << std::endl;
        }
    } while (!yearOfBirth);
    Patient client = Patient(std::to_string(count_number),
                             std::string(localLotNumber),
                             yearOfBirth,
                             first_name,
                             middle_name,
                             last_name,
                             placeOfWork,
                             adress);
    //delete region_code, num;
    //delete[] localLotNumber;
    main_patient = insert(main_patient, client);
}

//добавление врача
void read_doctor()
{
    char *first_name_and_initials;
    std::string position;
    std::string appointmentSchedule;
    int officeNumber;
    std::string input;
    bool is_error;
    int count = 0;
    do {
        std::cout << "Введите Фамилию и инициалы врача: " << std::endl;
        std::cin.ignore((std::numeric_limits<short>::max)(), '\n');
        getline(std::cin, input);
        is_error = check_error();
        if (!is_error)
        {
            count = sscanf(input.c_str(), "%s", first_name_and_initials);
            if (count != 1)
            {
                std::cout << "Ошибка ввода имени врача." << std::endl;
            }
        }
    } while (is_error || count != 1);
    do {
        std::cout << "Введите специализацию: ";
        //std::cin >> _appointmentSchedule;
        getline(std::cin, position);
        is_error = check_error();
        if (is_error)
        {
            getline(std::cin, input);
            if (!input.empty())
            {
                std::cout << "Ошибка в названии специализации." << std::endl;
            }
        }
    } while (is_error || input.empty());
    do {
        std::cout << "Введите часы приёма : ";
        getline(std::cin, appointmentSchedule);
        //std::cin >> _position;
        is_error = check_error();
        if (is_error)
        {
            getline(std::cin, input);
            if (!input.empty())
            {
                std::cout << "Ошибка ввода времени приёма." << std::endl;
            }
        }
    } while (is_error || input.empty());
    do {
        std::cout << "Введите номер кабинета: ";
        std::cin >> officeNumber;
        is_error = check_error();
        if (is_error)
        {
            getline(std::cin, input);
            if (!input.empty())
            {
                std::cout << "Ошибка ввода номера кабинета." << std::endl;
            }
        }
    } while (is_error || input.empty());

    Doctor book = Doctor(
            first_name_and_initials,
            position,
            appointmentSchedule,
            officeNumber);
    add_doctor(book);
}

//показать все записи Докторов
void look_all_doctors()
{
    int num = 0;
    for (int i = 0; i < doc_array_size; ++i)
    {
        if (!doctors_array[i].empty)
        {
            std::cout << ++num << ". " << doctors_array[i].doc_to_string() << std::endl;
        }
    }
}

//функция расширения хэш-таблицы
void extend_table()
{
    int new_books_array_size = doc_array_size * 2;
    Doctor* new_books_array = new Doctor[new_books_array_size];
    for (int i = 0; i < doc_array_size; i++)
    {
        memcpy(&new_books_array[i], &doctors_array[i], sizeof(Doctor));
    }
    doctors_array = new_books_array;
    doc_array_size = new_books_array_size;
}

//удаление доктора
void delete_doc(std::string num)
{
    int hs;
    int i = 0;
    while (true)
    {
        hs = hashO(num, i) % doc_array_size;
        if (doctors_array[hs].empty)
        {
            std::cout << "Не найдено имя в записях." << std::endl;
            return;
        }
        else if (doctors_array[hs].get_first_name_and_initials().compare(num) == 0)
        {
            delete_referral_dock_num(num);
            doctors_array[hs] = Doctor();
            std::cout << "Запись удалена." << std::endl;
            return;
        }
        ++i;
    }
}

//данные о книге
Doctor* get_doc(std::string num)
{
    int hs;
    int i = 0;
    while (true)
    {
        hs = hashO(num, i) % doc_array_size;
        if (doctors_array[hs].empty || doctors_array[hs].get_first_name_and_initials().compare(num) == 0)
        {
            return &doctors_array[hs];
        }
        ++i;
    }
}

//поиск врача по номеру
void find_doc_num(std::string num)
{
    Doctor* temp = get_doc(num);
    if (temp->empty)
    {
        std::cout << "Нет врача с данным именем." << std::endl;
    }
    else
    {
        std::cout << temp->doc_to_string() << std::endl;
    }
}

//поиск врача по названию специализации
void find_doc_name(std::string posi)
{
    int num = 0;
    for (int i = 0; i < doc_array_size; ++i)
    {
        if (!doctors_array[i].empty)
        {
            ++num;
            if (is_substring(doctors_array[i]._position,posi))
            {
                std::cout << num << ". " << doctors_array[i].doc_to_string() << std::endl;
            }
        }
    }
}

//выдача направления пациенту
void read_referral()
{
    int count_number = 0;
    char localLotNumber[3];
    int year_join = 0;
    std::string input;
    bool is_error;
    int count = 0, count_try = 0;
    node* p = nullptr;
    do {
        count_try = 0;
        std::cout << "Введите регистрационный номер MMNNNNNN, : " << std::endl;
        std::cin.ignore((std::numeric_limits<short>::max)(), '\n');
        getline(std::cin, input);
        is_error = check_error();
        if (!is_error)
        {
            count = sscanf(input.c_str(), "%2s%6d", localLotNumber, &count_number);
            if (count != 2)
            {
                std::cout << "Ошибка ввода регистрационного номера." << std::endl;
                //count_try++;
            }
            else
            {
                p = get_patient(main_patient, localLotNumber + add_zero(std::to_string(count_number), 6));
            }
        }
    } while (is_error || count != 2 || p == nullptr);
    char first_name[23];
    char initials[2];
    Doctor* book = nullptr;
    do {
        count_try = 0;
        std::cout << "Фамилию и инициалы врача: " << std::endl;
        //std::cin.ignore((std::numeric_limits<short>::max)(), '\n');
        getline(std::cin, input);
        is_error = check_error();
        if (!is_error)
        {
            count = sscanf(input.c_str(),"%s %s", first_name, initials);
            if (count != 2)
            {
                std::cout << "Ошибка ввода." << std::endl;
                //count_try++;
            }
            else
            {
                book = get_doc(std::string(first_name) + std::string(initials));
            }
        }
        //count_try++;
    } while (is_error || count != 2 || book->empty );
    std::string take_time;
    do {
        std::cout << "Ведите время приёма : " << std::endl;
        take_time = readTime();
    } while (take_time.empty());
    std::string return_date;
    do {
        std::cout << "Введите дату приёма: " << std::endl;
        return_date = readDate();
    } while (return_date.empty());

    if (head == nullptr) {
        std::cout << "Не выдано ни одного направления!" << std::endl;
    }
    if (head != nullptr){
        element* current = head;
        while (current->next != nullptr)
        {
            node* listener = get_patient(main_patient, current->data._regNumberPatient);
            if (current->data._doctorFullName == std::string (first_name) + std::string(initials) && current->data._date_return_time == return_date && current->data._take_time == take_time ){
                std::cout << " Направление к врачу : " << current->data._doctorFullName << " уже выданно " << listener->key._first_name << " " << listener->key._middle_name << std::endl;
                std::cout << " на время : " << current->data._take_time << " и дату: " << current->data._date_return_time << std::endl;
                current = current->next;
                return;
            }
        }
    }
    Referral tick = Referral(p->key.get_patient_id(),
                             book->get_first_name_and_initials(),
                             take_time,
                             return_date);
    add(head, tick);
    std::cout << "Напрввление выданно." << std::endl;
}

//возврат направления
void return_referral()
{
    if (head == nullptr) {
        std::cout << "Не выдано ни одного направления!" << std::endl;
        return;
    }
    print_all_given_referral();
    int count_number = 0;
    char localLotNumber[3];
    int year_join = 0;
    std::string input;
    bool is_error;
    int count = 0, count_try = 0;
    node* p = nullptr;
    do {
        count_try = 0;
        std::cout << "Введите регистрационный номер MMNNNNNN, : " << std::endl;
        std::cin.ignore((std::numeric_limits<short>::max)(), '\n');
        getline(std::cin, input);
        is_error = check_error();
        if (!is_error)
        {
            count = sscanf(input.c_str(), "%2s%6d", localLotNumber, &count_number);
            if (count != 2)
            {
                std::cout << "Ошибка ввода регистрационного номера." << std::endl;
                //count_try++;
            }
            else
            {
                p = get_patient(main_patient, localLotNumber + add_zero(std::to_string(count_number), 6));
            }
        }
    } while (is_error || count != 2 || p == nullptr);
    char first_name[23];
    char initials[2];
    Doctor* book = nullptr;
    do {
        count_try = 0;
        std::cout << "Фамилию и инициалы врача: " << std::endl;
        getline(std::cin, input);
        is_error = check_error();
        if (!is_error)
        {
            count = sscanf(input.c_str(),"%s %s", first_name, initials);
            if (count != 2)
            {
                std::cout << "Ошибка ввода." << std::endl;
            }
            else
            {
                book = get_doc(std::string(first_name) + std::string(initials));
            }
        }
    } while (is_error || count != 2 || book->empty );
    std::string take_time;
    do {
        std::cout << "Ведите время приёма : " << std::endl;
        take_time = readTime();
    } while (take_time.empty());
    std::string return_date;
    do {
        std::cout << "Введите дату приёма: " << std::endl;
        return_date = readDate();
    } while (return_date.empty());

    if (head != nullptr){
        element* current = head;
        while (current->next != nullptr)
        {
            node* listener = get_patient(main_patient, current->data._regNumberPatient);
            if (current->data._doctorFullName == std::string (first_name) + std::string(initials) && current->data._date_return_time == return_date && current->data._take_time == take_time ){
                std::cout << " Направление к врачу : " << current->data._doctorFullName << " удалено " << listener->key._first_name << " " << listener->key._middle_name << std::endl;
                std::cout << " на время : " << current->data._take_time << " и дату: " << current->data._date_return_time << std::endl;
                delete_referral_dock_num(book->get_first_name_and_initials());
                current = current->next;
                return;
            }
        }
    }
}

//удаление доктора по номеру
void remove_doctor()
{
    char second_name[23] , initials[2];
    std::string input;
    bool is_error;
    int count = 0;
    do {
        std::cin.ignore((std::numeric_limits<short>::max)(), '\n');
        std::cout << "Введите имя и инициалы врача : " << std::endl;
        getline(std::cin, input);
        is_error = check_error();
        if (!is_error)
        {
            count = sscanf(input.c_str(), "%s.%s", second_name, initials);
            if (count != 1)
            {
                std::cout << "Ошибка ввода имени" << std::endl;
            }
        }
    } while (is_error || count != 1);
    Doctor* doc = get_doc(std::string(second_name) + std::string(initials));
    if (doc->empty)
    {
        std::cout << "Нет врача с данным именем." << std::endl;
    }
    else
    {
        std::cout << doc->doc_to_string() << std::endl;
        std::cout << "Удаление записи." << std::endl;
        delete_doc(std::string(second_name) + std::string(initials));
    }
}

//удаление всех книг из библиотеки
void delete_all_doctors()
{
    delete[] doctors_array;
    doctors_array = new Doctor[doc_array_size];
    std::cout << "Все врачи удалены." << std::endl;
}

node* get_patient(node* p, std::string id)
{
    if (!p)
    {
        return nullptr;
    }
    int comp = p->key.get_patient_id().compare(id);
    if (comp == 0)
    {
        return p;
    }
    if (comp < 0)
    {
        return get_patient(p->left, id);
    }
    else
    {
        return get_patient(p->right, id);
    }
}

//интерфейс команд
void help_command()
{
    std::cout << "Команды: \n";
    std::cout << "\t1. Добавление нового пациента.\n";
    std::cout << "\t2. Удаление пациента.\n";
    std::cout << "\t3. Вывести весь список пациентов.\n";
    std::cout << "\t4. Удалить весь список пациентов.\n";
    std::cout << "\t5. Поиск по регистрационному номеру.\n";
    std::cout << "\t6. Поиск по имени пациента.\n";
    std::cout << "\t7. Добавить врача.\n";
    std::cout << "\t8. Удалить врача.\n";
    std::cout << "\t9. Отобразить список врачей.\n";
    std::cout << "\t10. Удалить всех врачей.\n";
    std::cout << "\t11. Поиск врача по имени.\n";
    std::cout << "\t12. Поиск врача по должности.\n";
    std::cout << "\t13. Записать пациента к врачу.\n";
    std::cout << "\t14. Вернуть направление.\n";
    std::cout << "\t15. Показать список выданных направлений.\n";
    std::cout << "\t16. Выход из программы.\n";
    std::cout << "Введите номер команды.\n";
    std::cout << "Команда: ";
};

//ввод команд меню
short inputValidationShort(short min, short max)
{
    while (true)
    {
        unsigned short temp = max + 10; char chr; std::cin >> chr;
        if (inputValidation(chr, true))
        {
            std::cin >> temp;
            if (temp >= min && temp <= max)
            {
                return temp;
            }
            else
            {
                std::cout << "Введенное значение выходит за рамки допустимого диапазона!" << std::endl;
                std::cout << "Допустимый диапозон: " << min << " - " << max << std::endl;
                //устанавливает максимальное кол-во элементов для игнорирования, \n разделитель, после которого cin перестает игнорировать
            }
        }
        else
        {
            std::cout << "Некорректный ввод!" << std::endl;
        }
    }
}

//проверка валидности ввода
bool inputValidation(char chr, bool message)
{
    if (isdigit(static_cast<unsigned char>(chr)))
        //проверка, является ли символ десятичной цифрой и обход проблемы с кириллицей
    {
        if (message)
        {
            std::cin.unget(); //возврат символа обратно в поток
            return true;
        }
    }
    else
    {
        return false;
    }
    return false;
}

//вывод выданных книг
void print_all_given_referral()
{
    if (head == nullptr) {
        std::cout << "Не выдано ни одного направления !" << std::endl;
        return;
    }

    element* current = head;
    while (current->next != nullptr)
    {
        node* listener = get_patient(main_patient, current->data._regNumberPatient);
        std::cout << "Направление к врачу: " << current->data._doctorFullName << " выдано пациенту " << listener->key._first_name << " " << listener->key._middle_name << std::endl;
        std::cout << " ID пациента " << current->data._regNumberPatient << std::endl;
        std::cout << "Время : " << current->data._take_time << " , дата : " << current->data._date_return_time << std::endl;
        current = current->next;
        if (current->next == current)
        {
            return;
        }
    }
}
void start(){
    Patient client = Patient(std::to_string(999998),
                             std::to_string(99),
                             1989,
                             "Иван",
                             "Иванов",
                             "Иванович",
                             "some company",
                             "www ленинград");
    //delete region_code, num;
    //delete[] localLotNumber;
    main_patient = insert(main_patient, client);
    Doctor book = Doctor(
            "ПетровПП",
            "9:00 - 17:00",
            "Флеболог",
            1);
    add_doctor(book);
    Referral tick = Referral(std::to_string(99999998),
                             "ПетровПП",
                             "13:13",
                             "11/11/2011");
    add(head, tick);
}