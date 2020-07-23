from django.db import models

# Create your models here.


class Vehicle_type(models.Model):

    vehicle_type = models.CharField(max_length = 150)

    def __str__(self):
        return self.vehicle_type


class Vehicle_info(models.Model):

    vehicle_reg_number = models.CharField(max_length = 150,unique=True)
    vehicle_type = models.ForeignKey(Vehicle_type, on_delete=models.CASCADE)
    brand_name = models.CharField(max_length = 150,blank=True)
    driver_name = models.CharField(max_length = 150,blank=True)
    model = models.CharField(max_length = 150,blank=True)


    def __str__(self):
        return self.vehicle_reg_number


class RF_card_info(models.Model):

    rf_card_number = models.CharField(max_length = 150,unique=True)
    vehicle_info = models.ForeignKey(Vehicle_info, on_delete=models.CASCADE)
    start_date = models.DateField()
    end_date = models.DateField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    active_status = models.IntegerField(default=0)


    def __str__(self):
        return self.rf_card_number


class Vehicle_log(models.Model):

    rf_card_number = models.CharField(max_length = 150)
    vehicle_id = models.CharField(max_length = 100)
    vehicle_reg_number = models.CharField(max_length = 150)
    driver_name = models.CharField(max_length = 150,blank=True)
    event_date_time = models.DateTimeField(auto_now_add=True)
    event_date = models.DateField(auto_now_add=True)
    event_time = models.TimeField(auto_now_add=True)
    event_type = models.IntegerField(default=0)


    def __str__(self):
        return self.rf_card_number
