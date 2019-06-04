from .settings_common import *


SECRET_KEY = '!(poief@tj(fc*o3hifd6a2^$(1qk!m)hv-uug2eh)anp^9u5%'
#DEBUG = False
DEBUG = True

ALLOWED_HOSTS = ['localhost', '127.0.0.1', '192.168.1.201', '192.168.0.201', '192.168.0.200', 'raspbian-backend.ddns.net', 'raspberrypi-server.ddns.net', 'raspberry-server.ddns.net', 'raspberry-project.ddns.net', '107.182.27.191', '3.13.2.78']


DATABASES = { 
    'default': {
        # 'ENGINE': 'django.db.backends.sqlite3',
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        # 'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
        'NAME': 'backend',
	'PASSWORD': '123456',
        'HOST': 'localhost',
        'PORT': '', 
    }   
}

# oss
OSS_ACCESS_KEY_ID = os.getenv('OSS_TEST_ACCESS_KEY_ID', 'LTAIh1547iWiXWoC')
OSS_ACCESS_KEY_SECRET = os.getenv('OSS_TEST_ACCESS_KEY_SECRET', 'Mh2rPHFOx7K2HkDmRS0efSfzqiFZlB')
OSS_BUCKET_NAME = os.getenv('OSS_TEST_BUCKET', 'bensbabycare')
OSS_ENDPOINT = os.getenv('OSS_TEST_ENDPOINT', 'oss-cn-hangzhou.aliyuncs.com')

# smtp
# ssl
EMAIL_USE_TLS = False
EMAIL_HOST = 'smtp.163.com'
EMAIL_PORT = 25
# ssl: 465/994	no ssl:25
EMAIL_HOST_USER = 'bensbabycare@163.com'
EMAIL_HOST_PASSWORD = 'yjh313'
DEFAULT_FROM_EMAIL = 'bensbabycare@163.com'


