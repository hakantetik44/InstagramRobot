from faker import Faker

fake = Faker()

def generate_fake_email():
    return fake.email()