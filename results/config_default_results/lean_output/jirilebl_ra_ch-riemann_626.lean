import Mathlib

axiom IsRiemannIntegrable : (ℝ → ℝ) → ℝ → ℝ → Prop
axiom riemann_integral : (ℝ → ℝ) → ℝ → ℝ → ℝ

open Set

theorem uniform_riemann_sum_approx {a b : ℝ} (f : ℝ → ℝ) (hf : IsRiemannIntegrable f a b)
  (ε : ℝ) (hε : 0 < ε) :
  ∃ (n : ℕ) (x : Fin (n + 1) → ℝ)
    (hx0 : x (0 : Fin (n + 1)) = a) (hxn : x (Fin.last n) = b)
    (hmono : ∀ i : Fin n, x (Fin.castSucc i) ≤ x (Fin.succ i)),
    ∀ (c : Fin n → ℝ), (∀ i : Fin n, c i ∈ Icc (x (Fin.castSucc i)) (x (Fin.succ i))) →
      |riemann_integral f a b - ∑ i : Fin n, f (c i) * (x (Fin.succ i) - x (Fin.castSucc i))| < ε :=
by sorry