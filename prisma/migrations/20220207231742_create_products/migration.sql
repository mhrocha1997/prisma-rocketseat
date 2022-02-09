-- CreateTable
CREATE TABLE "producets" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "bar_code" TEXT NOT NULL,
    "price" DECIMAL(65,30) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "producets_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "producets_bar_code_key" ON "producets"("bar_code");
