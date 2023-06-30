from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, String

Base = declarative_base()

class User(Base):
    __tablename__ = 'users'
    email = Column(String(50), primary_key=True)
    password = Column(String(256))

    def __to_dict__(self):
        return {
            'email': self.email,
            'password': self.password
        }
    



