/** @format */
import express, { Request, Response } from 'express'

const app = express()
const port = process.env.PORT || 3000

app.use(express.json())

app.get('/', (req: Request, res: Response) => {
  res.send('Hello, world!')
})

app.get('/api/items', (req: Request, res: Response) => {
  res.json({ message: 'GET all items' })
})

app.post('/api/items', (req: Request, res: Response) => {
  res.json({ message: 'POST a new item' })
})

app.put('/api/items/:id', (req: Request, res: Response) => {
  res.json({ message: `PUT update item with id ${req.params.id}` })
})

app.delete('/api/items/:id', (req: Request, res: Response) => {
  res.json({ message: `DELETE item with id ${req.params.id}` })
})

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`)
})
