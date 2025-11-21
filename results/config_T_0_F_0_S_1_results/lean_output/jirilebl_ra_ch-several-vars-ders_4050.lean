import Mathlib

/-!
Statement: Let f : ℝ^n → ℝ be C^2 with H_f continuous on a convex set U. Show that the
second-order Taylor expansion holds uniformly on compact subsets of U.

The following theorem formalises this assertion. We work on E = Fin n → ℝ (Euclidean ℝ^n),
use `HasFTaylorSeriesUpToOn`/`FormalMultilinearSeries` for the Taylor polynomial data, and
assume the 2nd coefficient (the 2nd-order multilinear form, i.e. the Hessian data)
is continuous on U. The conclusion is the usual uniform remainder estimate on any compact
subset K ⊆ U.
-/

open Set

theorem second_order_taylor_uniform_on_compact {n : ℕ} :
  let E := Fin n → ℝ
  let 𝕜 := ℝ
  in
  ∀ (f : E → ℝ) (U : Set E) (p : E → FormalMultilinearSeries 𝕜 E ℝ),
    Convex 𝕜 U →
    -- f has a Taylor series up to order 2 on U given by p
    HasFTaylorSeriesUpToOn 2 f p U →
    -- the 2nd-order coefficient (Hessian) depends continuously on x on U
    ContinuousOn (fun x => p x 2) U →
    -- conclusion: uniform second-order remainder on compacts K ⊆ U
    (∀ (K : Set E), IsCompact K → K ⊆ U →
      ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ (h : E), ‖h‖ ≤ δ → x + h ∈ U →
        Real.abs (f (x + h) - (p x 0) - (p x 1) h - (1 / 2) * (p x 2) (h, h)) ≤ ε * ‖h‖ ^ 2) :=
by sorry