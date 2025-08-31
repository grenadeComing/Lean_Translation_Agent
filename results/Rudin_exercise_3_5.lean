import Mathlib
open Filter

/-- For any two real sequences $\left\{a_{n}\right\},\left\{b_{n}\right\}$, prove that $\limsup _{n \rightarrow \infty}\left(a_{n}+b_{n}\right) \leq \limsup _{n \rightarrow \infty} a_{n}+\limsup _{n \rightarrow \infty} b_{n},$ provided the sum on the right is not of the form $\infty-\infty$. -/
theorem Rudin_exercise_3_5 (a b : ℕ → ℝ) (ha₁ : IsBoundedUnder (· ≤ ·) atTop a) (ha₂ : IsBoundedUnder (· ≥ ·) atTop a) (hb₁ : IsCoboundedUnder (· ≤ ·) atTop b) (hb₂ : IsBoundedUnder (· ≤ ·) atTop b) :
  Filter.limsup (fun n => a n + b n) atTop ≤ Filter.limsup a atTop + Filter.limsup b atTop :=
    limsup_add_le ha₂ ha₁ hb₁ hb₂