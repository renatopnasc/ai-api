FROM nikolaik/python-nodejs:python3.7-nodejs18-slim

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY package.json .
RUN npm install


COPY . .


# Expose the port to the outside world
EXPOSE 3333

# CMD com a sintaxe correta
CMD ["npm", "run", "start"]