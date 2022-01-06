-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL,
    "login" TEXT NOT NULL,
    "node_id" TEXT NOT NULL,
    "avatar_url" TEXT,
    "gravatar_id" TEXT,
    "url" TEXT,
    "html_url" TEXT,
    "followers_url" TEXT,
    "following_url" TEXT,
    "gists_url" TEXT,
    "starred_url" TEXT,
    "subscriptions_url" TEXT,
    "organizations_url" TEXT,
    "repos_url" TEXT,
    "events_url" TEXT,
    "received_events_url" TEXT,
    "type" TEXT,
    "site_admin" BOOLEAN,
    "name" TEXT,
    "company" TEXT,
    "blog" TEXT,
    "location" TEXT,
    "email" TEXT,
    "hireable" BOOLEAN,
    "bio" TEXT,
    "twitter_username" TEXT,
    "public_repos" INTEGER,
    "public_gists" INTEGER,
    "followers" INTEGER,
    "following" INTEGER,
    "created_at" TIMESTAMP(3),
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_id_key" ON "User"("id");

-- CreateIndex
CREATE UNIQUE INDEX "User_login_key" ON "User"("login");

-- CreateIndex
CREATE UNIQUE INDEX "User_node_id_key" ON "User"("node_id");
