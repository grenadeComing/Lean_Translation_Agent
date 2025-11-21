import Mathlib

/-- Abstract predicate saying a function is Riemann integrable on [a,b]. -/
axiom RiemannIntegrableOn : (ℝ → ℝ) → ℝ → ℝ → Prop

/-- Abstract function returning the value of the Riemann integral. -/
axiom riemannIntegral : (ℝ → ℝ) → ℝ → ℝ → ℝ

/-- A partition of [a,b]. -/
structure RPartition (a b : ℝ) where
  n : ℕ
  pts : Fin (n + 1) → ℝ
  first_eq : pts 0 = a
  last_eq : pts (Fin.last n) = b
  mono : ∀ i : Fin n, pts (Fin.castSucc i) ≤ pts (Fin.succ i)

theorem jirilebl_ra_ch_riemann_626
  (f : ℝ → ℝ) (a b : ℝ)
  (h : RiemannIntegrableOn f a b) :
  ∀ ε : ℝ, ε > 0 →
    ∃ (P : RPartition a b),
      ∀ (c : Fin (P.n) → ℝ),
        (∀ k : Fin (P.n), P.pts (Fin.castSucc k) ≤ c k ∧ c k ≤ P.pts (Fin.succ k)) →
          (abs (riemannIntegral f a b - (Finset.univ.sum fun k : Fin (P.n) => f (c k) * (P.pts (Fin.succ k) - P.pts (Fin.castSucc k))))) < ε := by sorry
