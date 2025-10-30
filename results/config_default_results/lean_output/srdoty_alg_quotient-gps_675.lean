import Mathlib

/-- (Injectivity test for homomorphisms) Prove that if f: G -> H is a group homomorphism with kernel K then f is injective if and only if K is the trivial subgroup. -/
'theorem injective_iff_trivial_ker {G H : Type*} [Group G] [Group H] {f : G →* H} :
  Injective ⇑f ↔ f.ker = ⊥ := by
  sorry
