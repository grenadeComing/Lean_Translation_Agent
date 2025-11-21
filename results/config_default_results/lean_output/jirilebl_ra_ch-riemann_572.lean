import Mathlib

/-- A minimal predicate expressing Riemann integrability relative to given
    notions of upper and lower sums U and L on partitions of [a,b]. -/
def IsRiemannIntegrable (Partition : Type) (U L : Partition → (ℝ → ℝ) → ℝ)
  (f : ℝ → ℝ) (a b : ℝ) : Prop :=
  ∃ I : ℝ, ∀ ε : ℝ, ε > 0 → ∃ P : Partition,
    abs (U P f - L P f) < ε ∧ abs (U P f - I) < ε ∧ abs (L P f - I) < ε

/-- Let f : [a,b] → ℝ be bounded. Suppose there exists a sequence of partitions P_k
    such that U(P_k,f) - L(P_k,f) → 0 in the ε-N sense. Then f is Riemann integrable
    (in the above sense) and there exists I equal to the common limit of U(P_k,f)
    and L(P_k,f). -/
theorem riemann_integrable_of_partitions
  (Partition : Type) (U L : Partition → (ℝ → ℝ) → ℝ)
  (a b : ℝ) (f : ℝ → ℝ)
  (hbound : ∃ M, ∀ x, a ≤ x → x ≤ b → abs (f x) ≤ M)
  (P : ℕ → Partition)
  (h : ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ k : ℕ, k ≥ N → abs (U (P k) f - L (P k) f) < ε)
  (hUL : ∀ Q, U Q f ≥ L Q f) :
  IsRiemannIntegrable Partition U L f a b ∧ ∃ I,
    (∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ k : ℕ, k ≥ N → abs (U (P k) f - I) < ε) ∧
    (∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ k : ℕ, k ≥ N → abs (L (P k) f - I) < ε) := by sorry
