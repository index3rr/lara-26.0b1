//
//  LiquidGlassPreview.swift
//  lara
//
//  Created by lunginspector on 5/13/26.
//

import SwiftUI

struct LiquidGlassPreview: View {
    @Binding var lgDisabled: Bool
    @Binding var lgFallback: Bool

    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                notificationBackground()
                HStack(spacing: 12) {
                    Image(systemName: "wrench.and.screwdriver")
                        .foregroundStyle(.white)
                        .frame(width: 45, height: 45)
                        .background(.blue)
                        .clipShape(.rect(cornerRadius: 14))
                    VStack(alignment: .leading) {
                        Text("App Notification")
                            .fontWeight(.medium)
                        Text("This is a notification!")
                    }
                    .font(.system(size: 14))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(14)
            }
            .clipShape(.rect(cornerRadius: 26))

            HStack {
                ZStack {
                    actionBackground()
                    Image(systemName: "flashlight.off.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                }
                .clipShape(.capsule)
                Spacer()
                ZStack {
                    actionBackground()
                    Image(systemName: "camera.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding()
                }
                .clipShape(.capsule)
            }
            .padding(.horizontal, 30)

            Capsule()
                .frame(width: 145, height: 4)
        }
        .foregroundStyle(.white)
        .padding(.horizontal)
        .padding(.top)
        .padding(.bottom, 10)
        .background {
            Image("solarium")
                .resizable()
                .scaledToFill()
                .brightness(-0.1)
        }
    }

    @ViewBuilder
    private func notificationBackground() -> some View {
        if lgFallback && !lgDisabled {
            Color(.systemGray)
        } else if lgDisabled {
            Color.black
        } else if #available(iOS 19.0, *) {
            Color.clear
                .glassEffect(.clear, in: RoundedRectangle(cornerRadius: 26))
        } else {
            Color.clear
        }
    }

    @ViewBuilder
    private func actionBackground() -> some View {
        if lgFallback && !lgDisabled {
            Color(.systemGray)
        } else if lgDisabled {
            Color.clear
                .background(.ultraThinMaterial)
        } else if #available(iOS 19.0, *) {
            Color.clear
                .glassEffect(.clear.interactive(), in: Capsule())
        } else {
            Color.clear
        }
    }
}

