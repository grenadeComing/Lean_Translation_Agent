import Mathlib

open Set

/--
If R = ∏_{i=0}^{n-1} [a_i, b_i] is a closed rectangle in ℝ^n and one side has length 0
(i.e. there exists i with a_i = b_i), then every bounded function f : ℝ^n → ℝ is Riemann
integrable on R and its (box) integral is 0.
This statement only records the theorem; the proof is omitted.
-/
theorem riemann_integrable_on_box_of_zero_side {n : ℕ} {a b : Fin n → ℝ}
  (h_zero_side : ∃ i : Fin n, a i = b i) :
  ∀ (f : (Fin n → ℝ) → ℝ),
    Bounded (f '' (Set.pi Set.univ fun i => Icc (a i) (b i))) →
    (HasBoxIntegral f (Set.pi Set.univ fun i => Icc (a i) (b i)) 0) ∧
    box_integral f (Set.pi Set.univ fun i => Icc (a i) (b i)) = 0 :=
by sorry