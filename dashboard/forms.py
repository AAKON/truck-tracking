from django.forms import ModelForm
from django import forms
from .models import Vehicle_info
from .models import RF_card_info
class DateInput(forms.DateInput):
    input_type = 'date'


class VehicleForm(ModelForm):
    class Meta:
        model = Vehicle_info
        fields = ['vehicle_reg_number','vehicle_type','brand_name','driver_name','model']

class RfCardForm(ModelForm):
    class Meta:
        model = RF_card_info
        fields = ['rf_card_number','vehicle_info','start_date','end_date','active_status']
        widgets = {
            'start_date': DateInput(),
            'end_date': DateInput(),

        }
