import Mathlib

open Filter

/-- Let z0 ∈ ℂ. The function f has limit ∞ in the Riemann sphere as z → z0 (punctured)
    iff for every M > 0 there is δ > 0 such that |f z| > M whenever |z - z0| < δ. -/
lemma tendsto_to_top_on_riemann_sphere_iff_forall_abs {f : ℂ → ℂ} {z0 : ℂ} :
  Tendsto (fun z => (f z : WithTop ℂ)) (𝓝[≠] z0) (𝓝 (⊤ : WithTop ℂ)) ↔
    ∀ M : ℝ, 0 < M → ∃ δ > 0, ∀ z : ℂ, abs (z - z0) < δ → M < abs (f z) :=
by sorry