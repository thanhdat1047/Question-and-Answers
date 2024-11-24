import { Express, Router } from "express";
import { signin, signup } from "../controllers/auth";

const authRoutes = Router()

authRoutes.post('/signup',signup)
authRoutes.post('/signin',signin)

export default authRoutes