from django.db import models

# Create your models here.
class Employees(models.Model):
    emp_first_name = models.CharField(max_length=10)
    emp_last_name = models.CharField(max_length=10)
    emp_addr = models.CharField(max_length=50, default='del')
    emp_id = models.CharField(max_length=5)

    def __str__(self):
        return self.emp_id