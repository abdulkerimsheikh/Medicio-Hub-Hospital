
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dasapp', '0002_remove_addpatient_fee_doctorreg_fee'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='appointment',
            name='prescription',
        ),
        migrations.RemoveField(
            model_name='appointment',
            name='recommendedtest',
        ),
    ]
