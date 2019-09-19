# -*- coding: utf-8 -*-
"""
Created on Wed Sep 18 14:04:45 2019

@author: User
"""

from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost:5432/EmployeeSQL')
connection = engine.connect()