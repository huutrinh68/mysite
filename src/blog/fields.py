from django import forms


class SimpleCaptchaField(forms.CharField):

    def __init__(self, label='Thủ đô của Việt Nam là gì?', **kwargs):
        super().__init__(label=label, required=True, **kwargs)
        self.widget.attrs['placeholder'] = 'Điền câu trả lời là Hà Nội or Hanoi or hanoi'

    def clean(self, value):
        value = super().clean(value)
        if value == 'Hà Nội' or value == 'Hanoi' or value == 'hanoi':
            return value
        else:
            raise forms.ValidationError('Câu trả lời sai')
