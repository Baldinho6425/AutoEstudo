export interface UserStats {
  posts: number
  followers: number
  following: number
}

export interface User {
  id: string
  name: string
  email: string
  role: string
  avatar: string
  bio: string
  stats: UserStats
}

