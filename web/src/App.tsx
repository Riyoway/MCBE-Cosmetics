const categories = [
  { name: 'Capes', status: 'Available' },
  { name: 'Cape Physics', status: 'Planned' },
  { name: 'Wings', status: 'Planned' },
]

export default function App() {
  return (
    <main className="min-h-screen bg-black text-neutral-100">
      <div className="mx-auto max-w-6xl px-6 py-16 sm:px-8">
        <header className="border-b border-white/10 pb-10">
          <p className="text-sm text-white/50">Minecraft Bedrock Edition</p>
          <h1 className="mt-3 text-4xl font-medium tracking-[-0.04em] sm:text-6xl">
            MCBE Cosmetics
          </h1>
          <p className="mt-5 max-w-2xl text-base leading-7 text-white/60">
            Browse client-side capes and upcoming cosmetic resource packs.
          </p>
        </header>

        <section className="grid gap-px overflow-hidden rounded-xl border border-white/10 bg-white/10 sm:grid-cols-3">
          {categories.map((category) => (
            <article key={category.name} className="bg-[#0b0b0b] p-6">
              <div className="flex items-center justify-between gap-4">
                <h2 className="text-base font-medium">{category.name}</h2>
                <span className="text-xs text-white/40">{category.status}</span>
              </div>
            </article>
          ))}
        </section>
      </div>
    </main>
  )
}
