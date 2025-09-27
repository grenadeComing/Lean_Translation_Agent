import Mathlib

/-!
Let p be a prime. Prove that if G is a finite group with exactly one Sylow p-subgroup,
then that Sylow p-subgroup is normal in G.
We state the result in Lean: if the type (Sylow p G) is Unique, then the unique
Sylow subgroup H satisfies g * h * g⁻¹ ∈ H for all g ∈ G and h ∈ H.
-/

theorem srdoty_alg_Sylow_394 {G : Type _} [Group G] [Fintype G] {p : ℕ} (hp : Nat.Prime p)
  (h_unique : Unique (Sylow p G)) :
  ∃ H : Sylow p G, ∀ (g : G) (x : G), x ∈ (H.1) → g * x * g⁻¹ ∈ (H.1) := by
  sorry
