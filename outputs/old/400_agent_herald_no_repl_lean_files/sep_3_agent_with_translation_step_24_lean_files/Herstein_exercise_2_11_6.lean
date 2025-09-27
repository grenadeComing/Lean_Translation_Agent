import Mathlib

universe u

variable {G : Type u} [Group G] [Finite G]

/-- A (slightly nonstandard) predicate saying that a subgroup H is a p-Sylow subgroup of G.
    We require that |H| = p^k, p^k divides |G|, and p^(k+1) does not divide |G|. -/
def is_sylow (p : ℕ) (H : Subgroup G) : Prop :=
  ∃ k, Nat.card (↥H) = p ^ k ∧ p ^ k ∣ Nat.card G ∧ ¬ (p ^ (k + 1) ∣ Nat.card G)

/-- Normality of a subgroup (conjugation-stable). -/
def Normal (H : Subgroup G) : Prop :=
  ∀ g x, x ∈ H → g * x * g⁻¹ ∈ H

/-- If P is a p-Sylow subgroup of G and P is normal in G, then P is the unique p-Sylow subgroup. -/
theorem sylow_normal_unique {p : ℕ} [Fact (Nat.Prime p)] (P : Subgroup G)
  (hP : is_sylow p P) (hnormal : Normal P) :
  ∀ Q : Subgroup G, is_sylow p Q → Q = P := by sorry
