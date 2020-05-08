import App from 'next/app'
import Head from 'next/head'
import Layout from '../components/Layout'

import '../styles/main.css'

export default class BagpipeMusic extends App {
  render() {
    const { Component, pageProps } = this.props

    return (
      <>
        <Head>
          <meta charSet="utf-8" />
          <meta name="viewport" content="width=device-width, initial-scale=1.0" />
          <meta httpEquiv="X-UA-Compatible" content="ie=edge" />
          <meta name="description" content="Bagpipes sheet music archive" />

          {/* Open Graph */}
          <meta property="og:title" content="Bagpipe music" />
          <meta property="og:description" content="Bagpipes sheet music archive" />
          <meta property="og:image" content="" />
          <meta property="og:image:type" content="image/png" />
          <meta property="og:image:width" content="" />
          <meta property="og:image:height" content="" />
          <meta property="og:image:alt" content="Bagpipe music icon" />
          <meta property="og:url" content="https://maelquerre.github.io/bagpipe-music/" />
          <meta property="og:type" content="website" />

          <link rel="icon" type="image/png" href="/favicon.png" />

          <link rel="stylesheet" type="text/css" href="https://rsms.me/inter/inter.css" />

          <title>Bagpipe music</title>
        </Head>

        <Layout>
          <Component {...pageProps} />
        </Layout>
      </>
    )
  }
}
