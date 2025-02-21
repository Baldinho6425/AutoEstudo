import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar"
import { Badge } from "@/components/ui/badge"
import { Card, CardContent, CardHeader } from "@/components/ui/card"
import { Separator } from "@/components/ui/separator"
import { Book, Mail, Users } from "lucide-react"
import type { User } from "@/types/user"

export default function UserProfile() {
  // This would typically come from your database or API
  const user: User = {
    id: "1",
    name: "Alice Johnson",
    email: "alice@example.com",
    role: "Product Designer",
    avatar: "/placeholder.svg?height=100&width=100",
    bio: "Designer de produto apaixonado por criar experiências de usuário bonitas e funcionais.",
    stats: {
      posts: 128,
      followers: 1420,
      following: 890,
    },
  }

  return (
    <div className="container mx-auto py-10">
      <Card className="max-w-3xl mx-auto">
        <CardHeader>
          <div className="flex flex-col items-center md:flex-row md:items-start gap-6">
            <Avatar className="h-24 w-24">
              <AvatarImage src={user.avatar} alt={user.name} />
              <AvatarFallback>{user.name.charAt(0)}</AvatarFallback>
            </Avatar>
            <div className="space-y-1 text-center md:text-left">
              <h1 className="text-2xl font-bold">{user.name}</h1>
              <div className="flex items-center justify-center md:justify-start gap-2">
                <Badge variant="secondary">{user.role}</Badge>
              </div>
              <p className="text-muted-foreground flex items-center justify-center md:justify-start gap-2">
                <Mail className="h-4 w-4" />
                {user.email}
              </p>
            </div>
          </div>
        </CardHeader>
        <CardContent>
          <div className="space-y-6">
            <div>
              <h2 className="font-semibold mb-2">About</h2>
              <p className="text-muted-foreground">{user.bio}</p>
            </div>
            <Separator />
            <div className="grid grid-cols-3 gap-4 text-center">
              <div className="space-y-1">
                <Book className="w-4 h-4 mx-auto" />
                <p className="text-2xl font-bold">{user.stats.posts}</p>
                <p className="text-xs text-muted-foreground">POSTS</p>
              </div>
              <div className="space-y-1">
                <Users className="w-4 h-4 mx-auto" />
                <p className="text-2xl font-bold">{user.stats.followers}</p>
                <p className="text-xs text-muted-foreground">FOLLOWERS</p>
              </div>
              <div className="space-y-1">
                <Users className="w-4 h-4 mx-auto" />
                <p className="text-2xl font-bold">{user.stats.following}</p>
                <p className="text-xs text-muted-foreground">FOLLOWING</p>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}

