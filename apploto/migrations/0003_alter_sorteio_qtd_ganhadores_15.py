# Generated by Django 4.0 on 2022-02-23 03:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apploto', '0002_alter_sorteio_qtd_ganhadores_15'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sorteio',
            name='qtd_ganhadores_15',
            field=models.CharField(max_length=3),
        ),
    ]
