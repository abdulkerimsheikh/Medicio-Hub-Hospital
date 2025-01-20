# Medicio Hub Hospital

Medicio Hub Hospital is a web-based application designed to streamline hospital management and improve patient care. The project includes an intuitive frontend built with HTML, CSS, and JavaScript, a robust backend developed using Python Django, and MySQL as the database.

---

## Features

- **Patient Management**: Easily manage patient records, appointments, and medical histories.
- **Doctor Management**: Manage doctor profiles, schedules, and specialties.
- **Appointment Booking**: Simplified appointment scheduling for patients.
- **Admin Dashboard**: Comprehensive dashboard for managing hospital operations.
- **Secure Authentication**: Ensure user data security with robust authentication mechanisms.

---

## Tech Stack

### Frontend
- **HTML**: Structure and content of web pages.
- **CSS**: Styling and layout.
- **JavaScript**: Dynamic and interactive user interface.

### Backend
- **Python Django**: Framework for handling server-side logic and RESTful APIs.

### Database
- **MySQL**: Reliable and scalable relational database.

---

## Installation

### Prerequisites
- Python 3.10
- Django Framework
- MySQL Server
- Node.js and npm (for managing frontend dependencies, if required)

### Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/abdulkerimsheikh/medicio-hub-hospital.git
   cd medicio-hub-hospital
   ```

2. **Set up a virtual environment**:
   ```bash
   python3 -m venv venv
   source venv/bin/activate # For Linux/Mac
   venv\Scripts\activate  # For Windows
   ```

3. **Install required Python packages**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Configure MySQL database**:
   - Create a new database in MySQL.
   - Update the `DATABASES` configuration in `settings.py`:
     ```python
     DATABASES = {
         'default': {
             'ENGINE': 'django.db.backends.mysql',
             'NAME': 'your_database_name',
             'USER': 'your_username',
             'PASSWORD': 'your_password',
             'HOST': 'localhost',
             'PORT': '3307',
         }
     }
     ```

5. **Run database migrations**:
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

6. **Run the development server**:
   ```bash
   python manage.py runserver
   ```

7. **Access the application**:
   Open your browser and navigate to `http://127.0.0.1:8000/`.

---

## Project Structure

```
medicio-hub-hospital/
|
├── templates/            # HTML templates
├── static/               # CSS, JavaScript, and images
├── medicio/              # Django project folder
│   ├── settings.py       # Project settings
│   ├── urls.py           # URL configuration
│   ├── wsgi.py           # WSGI entry point
│   └── ...
├── manage.py             # Django management script
├── requirements.txt      # Python dependencies
└── README.md             # Project documentation
```

---

## Usage

- **Admin Login**:
  Visit `/admin` to log in as an admin.
- **User Registration**:
  Patients and doctors can register through the respective forms.
- **Appointment Booking**:
  Book, update, or cancel appointments directly from the user dashboard.

---

## Contributing

1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add feature description"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Create a pull request.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Contact

- **Author**: Abdul Kareem
- **Email**: karima9185432@gmail.com 
- **GitHub**: [abdulkerimsheikh](https://github.com/abdulkerimsheikh)
