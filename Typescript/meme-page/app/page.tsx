import { Heart, Share2, MessageCircle } from "lucide-react"
import { Card, CardContent, CardFooter } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar"

// Sample meme data
const memes = [
  {
    id: 1,
    title: "When the code works on first try",
    image: "/placeholder.svg?height=300&width=400",
    author: "CodeMaster",
    likes: 1234,
    comments: 89,
    shares: 432,
    authorAvatar: "/placeholder.svg?height=40&width=40",
  },
  {
    id: 2,
    title: "JavaScript vs TypeScript",
    image: "/placeholder.svg?height=300&width=400",
    author: "TypeScriptFan",
    likes: 2341,
    comments: 156,
    shares: 789,
    authorAvatar: "/placeholder.svg?height=40&width=40",
  },
  {
    id: 3,
    title: "CSS struggles be like",
    image: "/placeholder.svg?height=300&width=400",
    author: "CSSWizard",
    likes: 3456,
    comments: 234,
    shares: 567,
    authorAvatar: "/placeholder.svg?height=40&width=40",
  },
  {
    id: 4,
    title: "Bug fixing adventures",
    image: "/placeholder.svg?height=300&width=400",
    author: "BugHunter",
    likes: 4567,
    comments: 345,
    shares: 890,
    authorAvatar: "/placeholder.svg?height=40&width=40",
  },
]

export default function MemePage() {
  return (
    <div className="container mx-auto py-8">
      <h1 className="mb-8 text-3xl font-bold">Trending Memes</h1>
      <div className="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
        {memes.map((meme) => (
          <Card key={meme.id} className="overflow-hidden">
            <CardContent className="p-0">
              <div className="p-4">
                <div className="flex items-center space-x-4">
                  <Avatar>
                    <AvatarImage src={meme.authorAvatar} alt={meme.author} />
                    <AvatarFallback>{meme.author[0]}</AvatarFallback>
                  </Avatar>
                  <div>
                    <p className="text-sm font-medium">{meme.author}</p>
                    <p className="text-xs text-muted-foreground">Posted 2h ago</p>
                  </div>
                </div>
                <h2 className="mt-4 text-xl font-semibold">{meme.title}</h2>
              </div>
              <div className="relative aspect-[4/3]">
                <img
                  src={meme.image || "/placeholder.svg"}
                  alt={meme.title}
                  className="object-cover"
                  style={{ width: "100%", height: "100%" }}
                />
              </div>
            </CardContent>
            <CardFooter className="p-4">
              <div className="flex w-full items-center justify-between">
                <Button variant="ghost" size="sm" className="flex items-center space-x-2">
                  <Heart className="h-4 w-4" />
                  <span>{meme.likes}</span>
                </Button>
                <Button variant="ghost" size="sm" className="flex items-center space-x-2">
                  <MessageCircle className="h-4 w-4" />
                  <span>{meme.comments}</span>
                </Button>
                <Button variant="ghost" size="sm" className="flex items-center space-x-2">
                  <Share2 className="h-4 w-4" />
                  <span>{meme.shares}</span>
                </Button>
              </div>
            </CardFooter>
          </Card>
        ))}
      </div>
    </div>
  )
}

