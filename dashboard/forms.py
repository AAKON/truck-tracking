from django.forms import ModelForm
from .models import Vehicle_info
from .models import RF_card_info

class VehicleForm(ModelForm):
    class Meta:
        model = Vehicle_info
        fields = ['vehicle_reg_number','vehicle_type','brand_name','driver_name','model']
