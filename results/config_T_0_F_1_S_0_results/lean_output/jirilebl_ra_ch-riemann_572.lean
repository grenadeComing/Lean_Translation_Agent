import Mathlib

/-- We abstract the notions of upper and lower sums as functions
    from an abstract partition type to real numbers. -/
def IsRiemannIntegrableOn (f : ℝ → ℝ) (a b : ℝ) (Partition : Type _) (U L : Partition → (ℝ → ℝ) → ℝ) : Prop :=
  ∃ s : ℝ, ∀ P, L P f ≤ s ∧ s ≤ U P f

theorem jirilebl_ra_ch_riemann_572 {a b : ℝ} {f : ℝ → ℝ}
  (Partition : Type _) (U L : Partition → (ℝ → ℝ) → ℝ) (Pseq : ℕ → Partition)
  (h_bounded : ∃ M, ∀ x, a ≤ x → x ≤ b → abs (f x) ≤ M)
  (h_order : ∀ P, L P f ≤ U P f)
  (h_diff_lim : ∀ ε > 0, ∃ N, ∀ k, k ≥ N → abs (U (Pseq k) f - L (Pseq k) f) < ε) :
  IsRiemannIntegrableOn f a b Partition U L ∧
  (∃ s : ℝ,
    (∀ P, L P f ≤ s ∧ s ≤ U P f) ∧
    (∀ ε > 0, ∃ N, ∀ k, k ≥ N → abs (U (Pseq k) f - s) < ε) ∧
    (∀ ε > 0, ∃ N, ∀ k, k ≥ N → abs (L (Pseq k) f - s) < ε)) :=
  by sorry
